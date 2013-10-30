Feature: Alta Alumno
	In order de tener a todos los alumnos en el sistema
	As a Docente
	I Want dar de alta a los alumnos de mi clase

Background:
	Given que ingreso al sistema como docente
	And estoy en la pagina de Alta de Alumno

Scenario: Dar de Alta un Alumno
	When completo el campo Nombre
	And completo el campo Apellido
	And completo el campo Email
	And completo el campo Contraseña
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "El alumno se ha dado de alta exitosamente"

Scenario: Dar de Alta un Alumno sin coincidir Contraseña y Confirmar Contraseña
	When completo el campo Nombre
	And completo el campo Apellido
	And completo el campo Email
	And completo el campo Contraseña
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "No coinciden las contraseñas"

Scenario: Dar de Alta un Alumno sin completar el campo Apellido
	When completo el campo Nombre
	And completo el campo Email
	And completo el campo Contraseña
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "Todos los campos son obligatorios"

Scenario: Dar de Alta un Alumno sin completar el campo Nombre
	When completo el campo Apellido
	And completo el campo Email
	And completo el campo Contraseña
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "Todos los campos son obligatorios"

Scenario: Dar de Alta un Alumno sin completar el campo Email
	When completo el campo Nombre
	And completo el campo Apellido
	And completo el campo Contraseña
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "Todos los campos son obligatorios"

Scenario: Dar de Alta un Alumno sin completar el campo Contraseña
	When completo el campo Nombre
	And completo el campo Apellido
	And completo el campo Email
	And completo el campo Confirmar Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "Todos los campos son obligatorios"

Scenario: Dar de Alta un Alumno sin completar el campo Confirmar Contraseña
	When completo el campo Nombre
	And completo el campo Apellido
	And completo el campo Email
	And completo el campo Contraseña
	And presiono el boton "Crear Alumno"
	Then deberia ver "Todos los campos son obligatorios"
