Algoritmo resistenciaTotal
	//Declaración de las variables
	Definir R1 Como Real;
	Definir R2 Como Real;
	Definir Rt Como Real
	
	//Inicialización de variables
	R1<-0;
	R2<-0;
	Rt<-0;
	
	//Entrada de datos
	Escribir "El valor del Resistor 1";
	leer R1;
	
	Escribir "El valor del Resistor 2";
	leer R2;
	
	Rt<-1/((1/R1) + (1/R2));
	
	//Salida de datos
	Escribir ("Para un circuito con dos resistores="),R1 " y " R2;
	Escribir ("Conectado en paralelo, la resistencia total Rt es igual a "),Rt ;
	
	
FinAlgoritmo
