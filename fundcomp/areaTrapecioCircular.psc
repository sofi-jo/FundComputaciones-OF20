Algoritmo areaDelTrapecioCircular
	//Declaración de variables
	
	Definir numPi como real;
	Definir Rma como entero;
	Definir Rme como entero;
	Definir g Como entero;
	Definir A Como real;
	
	//Inicialización de variables
	numPi<-3.1416;
	Rma<-0;
	Rme<-0;
	g<-0;
	A<-0;
	
	//Entrada de datos
	Escribir"Radio Mayor";
	leer Rma;
	Escribir "Radio Menor";
	leer Rme;
	Escribir "Amplitud de grados";
	Leer g;
	
	A<-(numPi*(Rma*Rma-Rme*Rme))/360
	
	//Salida de datos
	Escribir ("Si el trapecio tiene una amplitud de"),g;
	Escribir ("El área del trapecio circular es :"),A;
	
FinAlgoritmo
