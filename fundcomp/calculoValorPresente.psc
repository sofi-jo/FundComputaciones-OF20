Algoritmo calculoValorPresente
	
	//Declaración de las variables
	Definir C como entero;
	Definir K como entero;
	Definir  t como real;
	Definir VP como real ;
	
	//Incialización de las variables
	C<-0;
	K<-0;
	t<-0;
	VP<-0;
	
	//Entrada de datos
	Escribir "El capital";
	leer c;
	Escribir "Número de años";
	Leer k;
	
	t<-7/100;
	VP<- C/(1+t)^k;
	
	//Salida de datos
	escribir "el valor presente de la inversión es:",VP;
	
	
FinAlgoritmo
