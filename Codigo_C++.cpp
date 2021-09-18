#include <iostream>
#include <math.h>

using namespace std;

int main(){

double sig_per,w,L,t,d,I_b,s_b;
double x,a,M_M,c,I,b;

//Explicación del Código
cout << "============================================================ \n";
cout << " TRABAJO DE LA SEGUNDA UNIDAD - RESISTENCIA DE MATERIALES I \n";
cout << "  DOCENTE: VICTOR HUGO PELAEZ CHAVEZ      SECCIÓN: III-A \n";
cout << "      ESCUELA PROFESIONAL DE INGENIERÍA MECÁNICA - UNT    \n";
cout << "============================================================ \n";
cout << "El presente Código es la solución al problema 5C-3 propuesto. \n";
cout << "Introduzca los valores en unidades SI o imperiales puras sin prefijos. \n";
cout << "____________________________________________________________ \n";

//Input de los datos del problema
cout << "Introduzca el valor del esfuerzo permisible:\n";
cin >> sig_per;
cout << "Introduzca el valor de la carga por unidad de distancia:\n";
cin >> w;
cout << "Introduzca el valor de la longitud de la viga:\n";
cin >> L;
cout << "Introduzca el valor del espesor de la placa:\n";
cin >> t;
cout << "Introduzca el valor del espesor de la viga:\n";
cin >> d;
cout << "Introduzca el valor del Momento de Inercia de la Sección Transversal:\n";
cin >> I_b;
cout << "Introduzca el valor del Módulo de la Sección Transversal:\n";
cin >> s_b;

//Hallamos x:
x=(L-sqrt(pow(L,2)-8*((s_b*sig_per)/w)))/2.0;
//Hallamos a:
a=L-2*x;
//Hallamos el momento M_M:
M_M=(w*pow(L,2))/8;
//Hallamos c:
c=t+d/2;
//Hallamos el Momento de Inercia total:
I=(M_M*c)/sig_per;
//Finalmente hallamos b:
b=(6*(I-I_b))/(t*(pow(t,2)+3*pow((d+t),2)));

//Imprimimos los resultados:
cout << "_____________________________________________________________\n";
cout << "Longitud de las placas:  " << a << " m\n";
cout << "Ancho de las placas:  " << b << " m\n";

return 0;
}
