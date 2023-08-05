figure(1)
%Datos entregados en la tabla
x=[0 8 16 28 34 40];
y=[14 8 4 4 8 14]; 

%Grafica de los puntos dados anteriormente
plot(x,y,'o') 
%Ajuste de los margenes del grafico entregado
axis([-1 41 0 15]);
%Creacion de un polinomio para la curva donde se representa la forma natural de la quebrada
Coeficiente=polyfit(x,y,4);
% Se establecen los margenes de los datos a utilizar en la curva
X=-1:0.1:41;
%Se asigna el polinomio creado con los coeficientes anteriores a los datos "Y"
Y=polyval(Coeficiente,X);

%Ploteo de la curva anteriormente desarrollada
hold on
plot(X,Y,'r')
hold off

%Escritura del polinomio con la finalidad de calcular el area bajo la curva.
Funcion=@(X) Coeficiente(1)*X^4+Coeficiente(2)*X^3+Coeficiente(3)*X^2+Coeficiente(4)*X+Coeficiente(5);


#Calculo del volumen total de agua
#Area completa de la curva solicitada
AreaVolumen=quad(Funcion,0,40)
T=35000 #(Longitud de la quebrada en cm)
Volumen_Lago= AreaVolumen*T/100 #Aplicacion de la ecuacion entregada 95301.50 m^3

% Ecuacion de la recta--> (y2-y1)/(x2-x1)*X+x1

%Tramo 1 desde x=0 a x=6. Del C(0,14) al A(6,4)
RectaUno=@(X) (4-14)/(6-0)*X+14;
AreaUno=quad(Funcion,0,6)-quad(RectaUno,0,6);

%Tramo 1, Parte 2 desde x=6 a x=14. Del A(6,4) al B(14,2)
RectaUnoD=@(X) (2-4)/(14-6)*X+5.5;
AreaUnoD=quad(Funcion,6,14)-quad(RectaUnoD,6,14);

%Suma de las partes del Tramo 1
AreaUno=AreaUno+AreaUnoD

%Tramo 2, Parte 1 desde x=14 a x=30. Del B(14,2) al B2(30,2)
RectaDosU=@(X) (2-2)/(30-14)*X+2; 
AreaDosU=quad(Funcion,14,30)-quad(RectaDosU,14,30);

%Tramo 2, Parte 2 desde x=30 a x=38. Del B2(30,2) al A2(38,4)
RectaDosD=@(X) (4-2)/(38-30)*X-5.5;
AreaDosD=quad(Funcion,30,38)-quad(RectaDosD,30,38);

%Suma de las partes del Tramo 2
AreaDos=AreaDosU+AreaDosD

%Tramo 3 desde x=38 a x=44. Del A2(38,4) al C2(44,14)
RectaTres=@(X) (14-4)/(44-38)*X-56.8; 
AreaTres=quad(Funcion,38,44)-quad(RectaTres,38,44)

%Area desarrollada en la serie de comandos anteriores
Area_T=AreaUno+AreaDos+AreaTres

#Para calcular cuantos camiones tolva se necesitan para mover la tierra, se debe saber que un camion modelo TOLVA AD410, tiene una capacidad de 20 metros cubicos para su transporte, por lo que se debe dividir la cantidad en 20.
Volumen_Tolva=20

%Para convertir de area (m^2) a metros cubicos
%V=S*t/100
# V=Volumen en m3, S=Area en m2, t=espesor(altura) en cm
S=Area_T #Area correspondiente a la verdadera segun comando quad.

t=35000 #(Longitud de la quebrada en cm)

Volumen_tierra= S*t/100 #Aplicacion de la ecuacion entregada 47453 m^3

Camiones_Tolva=Volumen_tierra/Volumen_Tolva #Cantidad total de camiones Tolva a utilizar en esta empresa.