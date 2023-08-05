%Nicolas Navarro

%Actividad 1
%Lectura de Archivo
N='ContagiosT.xlsx';

%Asignacion de variable a la BBDD
T=xlsread(N)

%Actividad 2
figure (1)
hold on
grid on
%Asignacion de la columna dias transcurridos a la variable x
x=T(:,1)
%Asignacion de la columna contagiados totales acumulados a la variable y
y=T(:,2)

%Ploteo de las dos columnas
plot(x,y,'o')

%Informacion relevante para el grafico
title('N contagiados Acumulados en el tiempo')
xlabel('Tiempo en Dias')
ylabel('Numero contagiados acumulados')
hold off
grid off

%Actividad 3
figure (2)
%Declaracion de la funcion simbolica T(t), para resolver la EDO
syms T(t)

%Designacion de valores para la variable r y K, se usaran 4 valores para un
%mayor ajuste

%r=0.05 y K=945 designa el color verde
%r=0.0045 y K=930 designa el color magenta
%r=0.042 y K=950 designa el color cyan
%r=0.052 y K=940 designa el color negro

r=0.05 %Valor variable
K=945  %Valor variable

%Resolucion de la EDO con ode45, estableciendo la ecuacion y sus condiciones iniciales
[t,T]=ode45(@(t,T) +r.*T.*log(T/K),[1 91],[100 996])

%Para la Actividad 4, se utilizaron las siguientes condiciones iniciales
%[1 91] y [100 996]

hold on
grid on

%Actividad 5
%Ploteo de la solucion de la EDO y el grafico dado por los datos
plot(t,T(:,1),'b') %Tiempo
plot(t,T(:,2),'g') %Casos
plot(x,y,'r')
%Informacion relevante para el grafico
title('N� contagiados Acumulados en el tiempo')
xlabel('Tiempo en Dias')
ylabel('Numero contagiados acumulados')
hold off
grid off

%Actividad 6

%Estos valores se utilizan para buscar el mejor ajuste que pueda
%Entregar la solucion

%r=0.05 y K=945 designa el color verde
%r=0.0045 y K=930 designa el color magenta
%r=0.042 y K=950 designa el color cyan
%r=0.052 y K=940 designa el color negro

%Se concluye que r debe estar entre los valores 0.04 y 0.06
%Debido a que despues de buscar muchos valores, se encontro esta zona
%optima, donde se ajustan de mejor manera los valores

%Mientras que K debe de estar entre 900 y 1000, ya que la pendiente
%Depende de esta constante y esta es la zona optima de desarrollo
