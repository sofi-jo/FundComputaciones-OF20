Algoritmo metodoCaesar
	
	//Declaración de variables
	Definir n Como Entero;
	definir d Como Entero;
	Definir c Como Entero;
	
	//Inicalización de variables
	n<-0;
	d<-0;
	c<-0;
	
	//Entrada de datos
	Escribir "Dígito que se va a cifrar";
	leer d;
	Escribir "Desplazamiento aplicado";
	leer n;
	
	//Proceso 
	c<- (d + n)mod 10;
	
	//Salida de datos
	Escribir "el digito de entrada: ",d;
	Escribir "cifrado con el método del caesar con un desplazamiento: ",d;
	Escribir " el dígito cifrado es igual a:",c;
	
FinAlgoritmo
