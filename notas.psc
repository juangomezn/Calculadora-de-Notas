Funcion option <- menu //Funcion que muestra el menu y da las opciones para que el usuario utilize
	
	Escribir "Bienvenido al sistema de calculo de notas"
	Escribir "1. Ingrese sus alumnos al sistema"
	Escribir "2. Asignar notas al estudiante"
	Escribir "3. Mostrar el listado de estudiantes"
	Escribir "4. Calcular nota final"
	Escribir "0. Salir"
	Leer option
	
FinFuncion

Funcion arr <- crear_Alumno(arr, rango) 		//Funcion para crear alumnos en el sistema 
	
	Escribir 'Digite el codigo del estudiante'
	Leer codigo
	codigo_Existente = Falso
	Para k <- 1 Hasta i-1 Con Paso 1 Hacer
		Si arr[k, 1] == codigo Entonces
			codigo_Existente = Verdadero
		Fin Si
	FinPara
	
	Mientras codigo_Existente Hacer
		Escribir 'El codigo, ya existe: '
		Leer codigo
		codigo_Existente = Falso
		Para k <- 1 Hasta i-1 Con Paso 1 Hacer
			Si arr[k, 1] == codigo Entonces
				codigo_Existente = Verdadero
			Fin Si
		Fin Para
	Fin Mientras
	codigo = arr[i,1]
	
	Escribir 'Digite el nombre del estudiante'
	Leer nombre
	nombre = arr[i,2]
	
FinFuncion

Funcion mostrar_Alumnos 		//Funcion que muestra como quedaron creados los alumnos en el sistema
	
	Escribir "Sus alumnos se crearon de la siguiente manera"
	
FinFuncion

Funcion asignacion_Notas 		//Funcion que ayuda con la asignacion de notas para los alumnos
	
	Escribir "Ingrese el codigo del alumno al cual le asignara sus notas"
	Leer codigo
	Escribir "Ingrese la primera nota a asignar"
	Leer Nota_1
	Escribir "Ingrese la segunda nota a asignar"
	Leer Nota_2
	Escribir "Ingrese la tercera nota a asignar"
	Leer Nota_3
	
FinFuncion

Funcion calculo_Nota_final		//Funcion que ayuda con el calculo de la nota final teniendo en cuenta las inasistencias
	
	Escribir "Ingrese el codigo del alumno al cual le asignara sus notas"
	Leer codigo
	
	Calculo = (Nota_1 + Nota_2 + Nota_3)/7
	
	Escribir "Ingrese cantidad de inasistencias con las que cuenta el alumno"
	Leer inasistencias
	
	Si inasistencias = 10 > 15 Entonces
		calculo = calculo - 0.5
	Fin Si
	
	Si inasistencas < 15 Entonces
		calculo = calculo - 1
	Fin Si
	
FinFuncion

Algoritmo sin_titulo
	
	Dimensionar arr[10,2]
	
	Definir nombre Como Entero
	
	Repetir
		option = menu
		Segun option Hacer
			
			1:
				Mostrar crear_Alumno(arr, rango)
			2:
				asignacion_Notas
			3:
				mostrar_Alumnos
			4:	
				Escribir"Calcular nota final"
				
			De Otro Modo:
				Si option = 0 Entonces
					Escribir "Gracias por usar el programa"
				SiNo
					Escribir "Valor invalido"
				Fin Si
		Fin Segun
		
	Hasta Que option = 0
	
FinAlgoritmo