/* INFO de la programación realizada (sql):
Para la creación de la base de datos que se va a utilizar para la actividad de la semana 3 se realizan los siguientes pasos:
- Se crea la base de datos mediante el comando CREATE DATABASE y con el respectivo nombre de la base de datos.
- Se selecciona la base de datos a utilizar por medio de USE y nuestra base de datos.
- Procede a crear la tabla de Clientes, con CREATE TABLE e ingreso cada uno de los campos de la base de datos, el id es nuestra llave primaria y generado automaticamente a medida que se ingrese datos en la base de datos.
- Insertamos los datos de la tabla con INSERT INTO y el nombre de nuestra tabla clientes, indicando los valores a ingresar. Se ingresan 21 datos para este ejemplo.
- Realizamos búsqueda de los datos para validar que la base de datos funciona correctamente.
*/
CREATE DATABASE dbSemana3;

USE dbSemana3;

CREATE TABLE Clientes (
id int AUTO_INCREMENT,
nombre varchar(50),
cedula int,
edad int,
cargo varchar(50),
PRIMARY KEY (id)
);

INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Juan Alvarez', 1075270197, 31,'Ingeniero');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Julian Alvarez', 1075213018, 38,'Docente');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Hector Alvarez', 12105676, 71,'Pensionado');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Alberto Lopez', 18465157, 69,'Pensionado');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Roman Hernandez', 1117258453, 36,'Vendedor');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Alejandra Lucero', 86158589, 32,'Docente');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Alba Luz Javela', 12849658, 55,'Docente');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Rodrigo Ortiz', 77498258, 46,'Independiente');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Camila Vanegas', 1071289947, 26,'Independiente');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Gloria Leon', 8965279, 56,'Abogado');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Julieth Ramos', 1108588928, 30,'Doctor');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Eugenia Diaz', 45628941, 49,'Ama de Casa');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Eduardo García', 1077143208, 25,'Desempleado');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Gerardo Zambrano', 1076441236, 32,'Ingeniero');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Lorena Ibarra', 1106229745, 36,'Vendedor');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Carlos Rodriguez', 97521458, 42,'Maestro de Obra');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Oswaldo Tovar', 12584629, 70,'Pensionado');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Jose Reyes', 1018428511, 38,'Mensajero');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Luciana Gomez', 1025847445, 41,'Doctor');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Camila Silva', 1123287469, 28,'Ingeniero');
INSERT INTO Clientes (nombre, cedula, edad, cargo) VALUES ('Alvaro Rodriguez', 1105498521, 43,'Abogado');

SELECT * FROM Clientes;