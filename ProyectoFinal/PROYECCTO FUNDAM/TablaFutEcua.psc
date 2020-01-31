Algoritmo Proyecto1
	Definir equipo Como Caracter
	Definir aux Como Caracter
	Definir numEquipos Como Entero
	Definir ganado Como Entero
	Definir perdido Como Entero
	Definir empatado Como Entero
	Definir puntosGanados Como Entero
	Definir puntosEmpatados Como Entero
	Escribir 'Ingrese el número de equipos'
	Leer numEquipos
	Dimension equipos[numEquipos]
	Dimension tabla[numEquipos,5]
	Para i<-0 Hasta numEquipos Hacer
		Escribir 'Ingrese equipo'
		Leer equipo
		equipos[i] <- equipo
	FinPara
	Escribir 'Ingrese las fechas jugadas'
	Leer fechas
	Para i<-0 Hasta numEquipos Hacer
		Para j<-0 Hasta fechas Hacer
			Escribir 'Equipo'+equipos[i]
			Escribir 'Fecha',j+1
			Escribir 'Escriba resultado (1. Ganado, 2.Perdido, 3. Empate'
			Leer resultado
			Segun resultado  Hacer
				1:
					ganado <- ganado+1
					puntosGanados <- puntosGanados+3
				2:
					perdido <- perdido+1
				3:
					empatado <- empatado+1
					puntosEmpatados <- puntosEmpatados+1
			FinSegun
		FinPara
		tabla[i,0]<-equipos[i]
		tabla[i,1]<- ganado
		tabla[i,2]<-perdido
		tabla[i,3]<-empatado
		tabla[i,4]<- (puntosGanados + puntosEmpatados)
		ganado <- 0
		empatado <- 0
		puntosGanados <- 0
		puntosEmpatados <- 0
	FinPara
	Para i<-0 Hasta numEquipos Hacer
		Para j<-0 Hasta 5 Hacer
			Para k<-0 Hasta numEquipos Hacer
				Para l<-0 Hasta 5 Hacer
					Si (tabla[i,4]>tabla[k,4]) Entonces
						aux <- tabla[i,0]
						tabla[i,0]<-tabla[k,0]
						tabla[k,0]<-aux
						aux <- tabla[i,1]
						tabla[i,1]<-tabla[k,1]
						tabla[k,1]<-aux
						aux <- tabla[i,2]
						tabla[i,2]<-tabla[k,2]
						tabla[k,2]<-aux
						aux <- tabla[i,3]
						tabla[i,3]<-tabla[k,3]
						tabla[k,3]<-aux
						aux <- tabla[i,4]
						tabla[i,4]<-tabla[k,4]
						tabla[k,4]<-aux
					FinSi
				FinPara
			FinPara
		FinPara
	FinPara
	Escribir 'Ingrese opcion a presentar'
	Escribir '1. Presentar el historial de un equipo determinado'
	Escribir '2. Presentar la tabla de posiciones'
	Escribir 'Elija opcion para continuar'
	Leer op
	Segun op  Hacer
		1:
			Definir equipoPresent Como Caracter
			Escribir 'Ingrese el equipo'
			Leer equipoPresent
			Para i<-0 Hasta numEquiposon Hacer
				Para j<-0 Hasta 5 Hacer
					Si equipoPresent=equipos[i] Entonces
						Escribir 'EQ     G   P   E   TP'
						Escribir tabla[i,j]
					FinSi
				FinPara
			FinPara
		2:
			Para i<-0 Hasta numEquiposon Hacer
				Para j<-0 Hasta 5 Hacer
					Escribir 'EQ     G   P   E   TP'
					Escribir tabla[i,j]
				FinPara
			FinPara
	FinSegun
FinAlgoritmo
