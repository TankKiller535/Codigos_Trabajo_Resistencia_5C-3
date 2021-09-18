clc
clear all
format longg

%Explicación del Código
disp('=============================================================')
disp(' TRABAJO DE LA SEGUNDA UNIDAD - RESISTENCIA DE MATERIALES I')
disp('  DOCENTE: VICTOR HUGO PELAEZ CHAVEZ      SECCIÓN: III-A')
disp('      ESCUELA PROFESIONAL DE INGENIERÍA MECÁNICA - UNT   ')
disp('=============================================================')
disp('El presente Código es la solución al problema 5C-3 propuesto.')
disp('Introduzca los valores en unidades SI o imperiales puras sin prefijos.')
disp('_____________________________________________________________')

%Input de los datos del problema
disp('Introduzca el valor del esfuerzo permisible:')
sig_per=input('');
disp('Introduzca el valor de la carga por unidad de distancia:')
w=input('');
disp('Introduzca el valor de la longitud de la viga:')
L=input('');
disp('Introduzca el valor del espesor de la placa:')
t=input('');
disp('Introduzca el valor del espesor de la viga:')
d=input('');
disp('Introduzca el valor del Momento de Inercia de la Sección Transversal:')
I_b=input('');
disp('Introduzca el valor del Módulo de la Sección Transversal:')
s_b=input('');

%Hallamos x:
x=(L-sqrt(L^2-8*((s_b*sig_per)/w)))/2.0;
%Hallamos a:
a=L-2*x;
%Hallamos el momento M_M:
M_M=(w*L^2)/8;
%Hallamos c:
c=t+d/2;
%Hallamos el Momento de Inercia total:
I=(M_M*c)/sig_per;
%Finalmente hallamos b:
b=(6*(I-I_b))/(t*(t^2+3*(d+t)^2));

%Imprimimos los resultados:
disp('_____________________________________________________________')
fprintf('Longitud de las placas: %f  m\n',a)
fprintf('Ancho de las placas: %f  m\n',b)





