Feature: Listar Alumnos
	In order de listar a todos los alumnos
	As a Docente
	I want ver todos los alumnos del curso

Background: 
	Given que ingreso al sistema como Docente

Scenario: Ver listado de alumnos
	When presiono el boton "Ver Alumnos"
	Then deberia ver una lista con todos los alumnos ingresados al sistema
