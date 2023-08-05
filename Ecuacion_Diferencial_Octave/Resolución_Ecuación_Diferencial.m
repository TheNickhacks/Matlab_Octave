%Nicolas Navarro

%1)
%Importe de tablas de datos
NA = 'lab2.xlsx';
T = xlsread(NA)
%Retiene valores de la primera columna del Excel
x = T(1:16,1);
%Retiene valores de la segunda columna del Excel
y = T(1:16,2);

%Variacion de [Temperatura - Temperatura Ambiente]�C
z = y-30;

%2)
%Grafico de dispersion del tiempo v/s variacion de temperatura
hold on
grid on
%Comando para crear un grafico de dispersi�n
plot(x,z)
%Nombres de los ejes y del grafico
title(' Variaci�n de la Temperatura en el tiempo')
xlabel('t[minutos]')
ylabel('Variacion T(Tliq-Tamb) en [�C]')


%3)
%Resolucion Ecuacion Diferencial Ordinaria
%K de -1 a 1

eq = diff(T,t) == ((K)*(T-Tm));
Solucion = dsolve(eq)

%4)
%Establecer las constantes de la Ecuacion Diferencial Ordinaria
%Encontrar valor de C3, con t(tiempo[minutos])=0, la temperatura es 70 [�C]

cond = T(0) == 70;
Soluciond = dsolve(eq,cond)

%fplot(Soluciond)
solve(Soluciond,K)

%4)
%Establecer las constantes de la Ecuacion Diferencial Ordinaria
%Encontrar valor de C3, con t(tiempo[minutos])=0, la temperatura es 70 [�C]
cond = T(0) == 70;
Soluciond = dsolve(eq,cond)
%El comando dsolve previamente ejecutado, entrega la funcion guardad en
%la variable "Aux"

%4)
%Establecer las constantes de la Ecuacion Diferencial Ordinaria
%Encontrar valor de C3, con t(tiempo[minutos])=0, la temperatura es 70 [�C]
cond = T(0) == 70;
Soluciond = dsolve(eq,cond)
%El comando dsolve previamente ejecutado, entrega la funcion guardad en
%la variable "Aux"

Aux=((40*e^(K.*t))+30)

%Se utiliza solve para despejar el valor de K
solve(Aux,K)

%El despeje de K entrega la siguiente funcion, donde se iterar� hasta
%Cumplir con los 15 valores, esto con la finalidad de encontrarl el valor
%que mas se repita en esta serie, ese valor corresponde a la constante "K"
su=(-2*log(2)+log(3)+I*pi)/10
sd=(-2*log(2)+log(3)+I*pi)/20
st=(-2*log(2)+log(3)+I*pi)/30
sc=(-2*log(2)+log(3)+I*pi)/40
scc=(-2*log(2)+log(3)+I*pi)/50
ss=(-2*log(2)+log(3)+I*pi)/60
sss=(-2*log(2)+log(3)+I*pi)/70
so=(-2*log(2)+log(3)+I*pi)/80
sn=(-2*log(2)+log(3)+I*pi)/90
sd=(-2*log(2)+log(3)+I*pi)/100
so=(-2*log(2)+log(3)+I*pi)/110
sdo=(-2*log(2)+log(3)+I*pi)/120
stre=(-2*log(2)+log(3)+I*pi)/130
sca=(-2*log(2)+log(3)+I*pi)/140
sq=(-2*log(2)+log(3)+I*pi)/150

%Luego de iterar con todos los valores de tiempo, se establece que la constante
%corresponde al valor 0.2854, debido a que este se repite y es el unico valor
%que hace lo mencionado anteriormente

a= -0.028768 + 0.314159
b= -2.8768e-03 + 3.1416e-02

%5)
%Grafica de la solucion encontrada a la EDO
h=[0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150];
c=[a.*h]
Edo=((40*exp(c))+30)
plot(Edo,h)
axis([0 70])
hold off




