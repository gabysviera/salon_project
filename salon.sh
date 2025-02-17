#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

MAIN_MENU () {

if [[ $1 ]]
then
echo $1
fi

echo -e "\n\nWelcome to My Salon, how can I help you?"
echo -e "\nPlease, enter the service you would like to have:"

#get services to show
GET_SERVICES=$($PSQL "SELECT service_id, name FROM services")
echo "$GET_SERVICES" | while read SERVICE_ID BAR NAME
do
echo "$SERVICE_ID) $NAME"
done

read SERVICE_ID_SELECTED

#check if the input is a number
if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]$ ]]
then
MAIN_MENU "Sorry. Invalid input"
else
#check if the input exists on the database
GET_SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
if [[ -z $GET_SERVICE_ID ]]
then
MAIN_MENU "Sorry, invalid input"
else

#get customers phone number
echo -e "\nCould you provide me your phone number please?"
read CUSTOMER_PHONE

#check if the phone number is recorded
GET_CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
if [[ -z $GET_CUSTOMER_ID ]]
then
echo "Sorry. I don't have your phone number recorded."
echo -e "\nPlease, provide me your name:"
#get customer's name
read CUSTOMER_NAME
#insert name and phone into the database
INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
#get service name
fi
GET_CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
#if the phone is recorded
echo -e "\n What time would you like your$SERVICE_NAME,$CUSTOMER_NAME?"
read SERVICE_TIME

#add appointment into the database
INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$GET_CUSTOMER_ID','$SERVICE_ID_SELECTED','$SERVICE_TIME')")

echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME"
fi
fi
}

MAIN_MENU