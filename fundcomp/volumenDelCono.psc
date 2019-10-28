Algoritmo sin_titulo
	//Declaración de variables
	definir g Como Real;
	definir r Como Real;
	definir h Como Real;
	definir v como real;
	definir numPi como real;
	
	//Inicializacion de variables
	numPi<-3.1416;
	g<-0;
	r<-0;
	h<-0;
	v<-0;
	
	//Entrada de datos
	escribir"valor de la generatriz";
	leer g;
	Escribir "valor del radio";
	leer r;
	
	h<-raiz(g+g-r+r);
	v<- (numPi*r*r*h)/3;
	
	Escribir("El volumen del cono es:"),v;
FinAlgoritmo
