# salon_project
In this repository, you can find 2 files: a sql file and a bash file.

ES
En este proyecto, creé un programa utilizando SQL y Bash donde los clientes pueden agendar citas para un salón de peluquería.

Con SQL, realicé 3 tablas: customers, services y appointments.
La tabla de customers incluye información de loc clientes como número de teléfono, el nombre y el customer_id. Esta información es recolectada a través del script de Bash.
La tabla de services contiene los servicios que ofrece la peluquería y su correspondiente service_id.
La tabla de appointments guarda el service_id, el customer_id y el horario en el que la cita fue agendada.

Con el script de Bash, realicé consultas a PSQL para conseguir la ifnormación de las tablas.
Este scriipt de bash recolecta la información del cliente utilizando read.

En mi perfil de Github vas a poder encontrar otro proyecto similar como este llamado salon?project2, que es un proyecto un poco más grande donde el cliente no solo agenda citas sino que también las puede cancelar. 
Otra diferencia es que en este proyecto, el cliente colocaba el horario tipeándolo mientras que en el proyecto salon_project2, el script desplegaba una lista de horarios disponibles que el cliente podía elegir, y una vez que este elegía un horario, automáticamente se coloca en no disponible para que así otra persona no escoja el mismo horario. 

Te invito a que puedas ver mi otro proyecto también y que disfrutes ejecutándolo!!


EN
In this project, I created a salon program using SQL and Bash so that customers can book appointments.

With SQL, I built three tables: customers, services, and appointments.
The customers table includes information such as phone number, customer name, and customer_id. This information is collected through the Bash script.
The services table contains the services offered by the salon and their corresponding service_id.
The appointments table records the service_id the customer wants, the customer_id, and the time the appointment was booked.

With the Bash script, I made some queries to the PSQL, to get customers, services or appointment information. 
This bash script recollects the customer's information using "read". 

In my GitHub profile, you can find another salon project called salon_project2. That is a bigger project than this one, where the customer can not only book an appointment but also cancel it.
Another difference is that in this project, the customer books the appointment at the most convenient time by typing it, but in salon_project2, the script displays the available times for the customer to choose from. If a customer selects a specific time, that time becomes unavailable, so another customer can't book the same time.
Please, take a look at the other project too and have fun!
