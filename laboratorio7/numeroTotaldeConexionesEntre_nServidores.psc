Algoritmo NumeroTotal_deConexiones
	//Declaraci�n de Variables
	Definir n Como Entero;
	Definir c Como Entero;
	
	//Inicializaci�n de variables
	n<-0; 
	c<-0
	
	//Entrada de datos
	Escribir "El n�mero de servidores";
	leer n;
	
	c<-(n*(n-1)/2);
	
	//Salida de datos
	
	Escribir ("Para una cantidad de servidores n="),n;
	Escribir ("Existe un n�mero total de conexiones="),c;
	
FinAlgoritmo
