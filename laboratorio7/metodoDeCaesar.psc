Algoritmo metodoCaesar
	
	//Declaraci�n de variables
	Definir n Como Entero;
	definir d Como Entero;
	Definir c Como Entero;
	
	//Inicalizaci�n de variables
	n<-0;
	d<-0;
	c<-0;
	
	//Entrada de datos
	Escribir "D�gito que se va a cifrar";
	leer d;
	Escribir "Desplazamiento aplicado";
	leer n;
	
	//Proceso 
	c<- (d + n)mod 10;
	
	//Salida de datos
	Escribir "el digito de entrada: ",d;
	Escribir "cifrado con el m�todo del caesar con un desplazamiento: ",d;
	Escribir " el d�gito cifrado es igual a:",c;
	
FinAlgoritmo
