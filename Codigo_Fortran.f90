PROGRAM TRABAJO_UNIDAD_3
IMPLICIT NONE
REAL(KIND=8):: sig_per,w,L,t,d,I_b,s_b
REAL(KIND=8):: x,a,M_M,c,I,b

!Explicación del Código
PRINT*, '============================================================='
PRINT*, ' TRABAJO DE LA SEGUNDA UNIDAD - RESISTENCIA DE MATERIALES I'
PRINT*, '  DOCENTE: VICTOR HUGO PELAEZ CHAVEZ      SECCIÓN: III-A'
PRINT*, '      ESCUELA PROFESIONAL DE INGENIERÍA MECÁNICA - UNT   '
PRINT*, '============================================================='
PRINT*, 'El presente Código es la solución al problema 5C-3 propuesto.'
PRINT*, 'Introduzca los valores en unidades SI o imperiales puras sin prefijos.'
PRINT*, '_____________________________________________________________'

!Input de los datos del problema
PRINT*, 'Introduzca el valor del esfuerzo permisible:'
READ(*,*) sig_per
PRINT*, 'Introduzca el valor de la carga por unidad de distancia:'
READ(*,*) w
PRINT*, 'Introduzca el valor de la longitud de la viga:'
READ(*,*) L
PRINT*, 'Introduzca el valor del espesor de la placa:'
READ(*,*) t
PRINT*, 'Introduzca el valor del espesor de la viga:'
READ(*,*) d
PRINT*, 'Introduzca el valor del Momento de Inercia de la Sección Transversal:'
READ(*,*) I_b
PRINT*, 'Introduzca el valor del Módulo de la Sección Transversal:'
READ(*,*) s_b

!Hallamos x:
x=(L-sqrt(L**2-8*((s_b*sig_per)/w)))/2.0
!Hallamos a:
a=L-2*x
!Hallamos el momento M_M:
M_M=(w*L**2)/8
!Hallamos c:
c=t+d/2
!Hallamos el Momento de Inercia total:
I=(M_M*c)/sig_per
!Finalmente hallamos b:
b=(6*(I-I_b))/(t*(t**2+3*(d+t)**2))

!Imprimimos los resultados:
PRINT*, '_____________________________________________________________'
PRINT*, 'Longitud de las placas:',a,'m'
PRINT*, 'Ancho de las placas:',b,'m'

END PROGRAM TRABAJO_UNIDAD_3
