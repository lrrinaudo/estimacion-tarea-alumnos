Feature: Inicio de Sesion
	In order de ingresar al sistema
	As a Alumno
	I want ingresar mail y contraseña

Background:
	Given que existo como alumno en el sistema

Scenario: Inicio de Sesion
	When estoy en la pagina principal
	Then deberia ver los campos de email y contraseña
	When completo el campo email con un email valido
	And completo el campo contraseña
	And presiono el boton "iniciar sesion"
	Then deberia ingresar al sistema

Scenario: Inicio de Sesion incorrecto por email
	When estoy en la pagina principal
	Then deberia ver los campos de email y contraseña
	When completo el campo email con un email invalido
	And completo el campo contraseña
	And presiono el boton "iniciar sesion"
	Then no deberia ingresar al sistema
	And deberia ver "email incorrecto"

Scenario: Inicio de Sesion incorrecto por contraseña
	When estoy en la pagina principal
	Then deberia ver los campos de email y contraseña
	When completo el campo email con un email  valido
	And completo el campo contraseña con una contraseña incorrecta
	Then no deberia ingresar al sistema
	And deberia ver "password incorrecto"
