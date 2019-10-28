Algoritmo NumeroTotal_deConexiones
	//Declaración de Variables
	Definir n Como Entero;
	Definir c Como Entero;
	
	//Inicialización de variables
	n<-0; 
	c<-0
	
	//Entrada de datos
	Escribir "El número de servidores";
	leer n;
	
	c<-(n*(n-1)/2);
	
	//Salida de datos
	
	Escribir ("Para una cantidad de servidores n="),n;
	Escribir ("Existe un número total de conexiones="),c;
	
FinAlgoritmo
