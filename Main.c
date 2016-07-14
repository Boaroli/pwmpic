#include <pic.h>
//#define interrupt 123


#define _XTAL_FREQ 		20000000
#define delayus(time) 	__delay_us(time)
#define delayms(time)	__delay_ms(time)

__CONFIG(0x318A);

#define kTRISIO		0b11000001
#define DIO			GPIO2

#define uchar 	unsigned char
#define uint	unsigned int
#define ulong	unsigned long
#define GODONE		GO_DONE

int Press, estado, X1, X2, Y;
char altx;
//#define t2  98

//unsigned int Timer_ms[5];

/*void EnviaDado(char dado){
		
		DIO = 0; NOP(); delayus(t2);
		DIO = ((dado &1)==1); NOP(); delayus(t2);				
		DIO = ((dado &2)==2); NOP();delayus(t2);
		DIO = ((dado &4)==4); NOP();delayus(t2);
		DIO = ((dado &8)==8); NOP();delayus(t2);
		DIO = ((dado &16)==16); NOP();delayus(t2);
		DIO = ((dado &32)==32); NOP();delayus(t2);
		DIO = ((dado &64)==64); NOP();delayus(t2);
		DIO = ((dado &128)==128); NOP();delayus(t2);
		
		NOP();
		DIO = 1; delayus(t2);
}*/

void interrupt ISR (void){
	if(TMR1IF){
		TMR1IF = 0;
		DIO = !DIO;
		if(altx==10)
			TMR1 = 65535-1223+X2;
		else 
			TMR1 = 65535-1223+X1;

	}
}

void Inicializa()
{
	TRISIO = kTRISIO;
	WPU = 0;

	//Timer 0
	T0IE = 0;

//	Timer 1
	TMR1ON = 1;
	TMR1IE = 1;
	T1CKPS1 = 0;
	T1CKPS0 = 0;

	VCFG = 0;
	ADON = 1;
	ADFM = 1;	
	ANSEL = 0b00101000;	

	CHS1 = 0;
	CHS0 = 0;

	GIE = 1;
	PEIE = 1;
}

void main(void)
{	
	int i;
	Inicializa();
	while (1)
	{	
		GO_DONE = 1;
		while(GO_DONE);
		int Y = (((ADRESH<<8)+ ADRESL));
		altx = 1;
		X1 = Y;
		
		
		GO_DONE = 1;
		while(GO_DONE);
		int Y = (((ADRESH<<8)+ ADRESL));
		altx = 2;
		X2 = Y;
		
		
	/*	DIO = 1;
		delayus(18);
		for(i=0;i<X;i++){}
		DIO = 0;*/
	}
}

