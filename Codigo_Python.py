# coding: utf-8
# Codificación de los caracteres
import math

#Explicación del Código
print '============================================================='
print ' TRABAJO DE LA SEGUNDA UNIDAD - RESISTENCIA DE MATERIALES I'
print '  DOCENTE: VICTOR HUGO PELAEZ CHAVEZ      SECCIÓN: III-A'
print '      ESCUELA PROFESIONAL DE INGENIERÍA MECÁNICA - UNT   '
print '============================================================='
print 'El presente Código es la solución al problema 5C-3 propuesto.'
print 'Introduzca los valores en unidades SI o imperiales puras sin prefijos.'
print '_____________________________________________________________'

#Input de los datos del problema
print 'Introduzca el valor del esfuerzo permisible:'
sig_per=float(raw_input(''))
print 'Introduzca el valor de la carga por unidad de distancia:'
w=float(raw_input(''))
print 'Introduzca el valor de la longitud de la viga:'
L=float(raw_input(''))
print 'Introduzca el valor del espesor de la placa:'
t=float(raw_input(''))
print 'Introduzca el valor del espesor de la viga:'
d=float(raw_input(''))
print 'Introduzca el valor del Momento de Inercia de la Sección Transversal:'
I_b=float(raw_input(''))
print 'Introduzca el valor del Módulo de la Sección Transversal:'
s_b=float(raw_input(''))

#Hallamos a:
a=math.sqrt(L**2-8*((s_b*sig_per)/w))
#Hallamos el momento M_M:
M_M=(w*L**2)/8
#Hallamos c:
c=t+d/2
#Hallamos el Momento de Inercia total:
I=(M_M*c)/sig_per
#Finalmente hallamos b:
b=(6*(I-I_b))/(4*t**3+3*t*d**2+6*d*t**2)

#Imprimimos los resultados:
print '_____________________________________________________________'
print 'Longitud de las placas:  ',a,' m'
print 'Ancho de las placas:  ',b,' m'
