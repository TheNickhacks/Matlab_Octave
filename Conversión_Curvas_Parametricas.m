% Nicolas Navarro

%Act1
figure (1)
hold on
grid on
# r(t)= tcos(t)i+tsin(t)j+tk
#t pertenece a [0,2pi]

%Valor maximo de t
a= 2*pi;
t= [0:0.1:a];

%Entrega de valores a r(t)
X= t.*(cos(t));
Y= t.*(sin(t));
Z= t;

%Titulos y ejes del grafico
title("Camino que recorre la particula")
xlabel("Eje x")
ylabel("Eje y")
zlabel("Eje z")

%Ploteo del recorrido de la particula
plot3(X,Y,Z)

%Act 2
%valor inicial de t
ta=pi/2;

%Origen del vector dado por la derivada de r(t)
Xc=ta*(cos(ta));

Yc=ta*(sin(ta));

Zc=ta;

%derivada de r(t)
%componente x derivado
dx=cos(ta)+ta*(-sin(ta));

%componente y derivado
dy=sin(ta)+ta*(cos(ta));

%componente z derivado
dz=1;

%Ploteo con quiver3 del vector de r'(y)
quiver3(Xc,Yc,Zc,dx,dy,dz)

%Act 3

%punto r(pi/2)
tl=pi/2;

%Evaluar r(t) en t=pi/2
Xc=tl*(cos(tl));
Yc=tl*(sin(tl));
Zc=tl;

%Coordenadas del punto t=pi/2
Ax=[Xc,Yc,Zc]

%r'(t) evaluada en t=pi/2
dx=cos(tl)+tl*(-sin(tl));
dy=sin(tl)+tl*(cos(tl));
dz=1;

%Coordenadas del vector director en  t=pi/2
rp=[dx,dy,dz]

%Ploteo del punto r(t) con t=pi/2
plot(Xc,Yc,Zc)

%Ecuaciones parametricas de la forma
%X=d1*t+x0
%Y=d2*t+y0
%Z=d3*t+z0

%Valores para tp
tp=[0:0.1:(2*pi)]
disp("Ecuaciones parametricas")
Xp=dx*tp
Yp=dy*tp+1
Zp=dz*tp+1

%Ploteo de las ecuaciones parametricas
plot3(Xp,Yp,Zp)

%Act 4

%Valores aleatorios para el tama�o de la superficie
x=-7:7;
y=-7:7;

%Comando meshgrid para transformar el dominio de dos vectores
%a matroces, para evaluar la funcion z
[X,Y]=meshgrid(x,y);

%Ecuacion del plano
aux=(pi/2);

z=((-aux/2*X)-(Y+aux/2))/-1;

%Comando para graficar una superficie de tres dimensiones
surf(X,Y,z)

hold off

%Act 5

# r(t)= tcos(t)i+tsin(t)j+tk
#t en horas
figure (2)
hold on
grid on
%Valorar t=3 (horas)
tv=3;
%Entrega de valores a r(t)
Xb= tv*cos(tv)
Yb= tv*sin(tv)
Zb= tv

% Item 5

%a)
%Posici�n del auto
P=[Xb,Yb,Zb]
plot3(Xb,Yb,Zb)

%Titulos y ejes del grafico
title("Posicion del auto al t=3")
xlabel("Eje x")
ylabel("Eje y")
zlabel("Eje z")
hold off

%b)
%ecuacion de velocidad es igual a r'(t)

%componente x derivado
dx=cos(ta)+ta*(-sin(ta));

%componente y derivado
dy=sin(ta)+ta*(cos(ta));

%componente z derivado
dz=1;
disp("Velocidad al instante t")
"rprima"
"X=cos(ta)+ta*(-sin(ta))"
"Y=sin(ta)+ta*(cos(ta))"
"z=1"

%c)
disp("Rapidez al instante t")
"cos(ta)+ta*(-sin(ta))+sin(ta)+ta*(cos(ta))+1"

%d)
%Velocidad al instante t=3
vel=[cos(tv)+tv*(-sin(tv)),sin(tv)+tv*(cos(tv)),1]

%Rapidez al instante t=3
rap=cos(tv)+tv*(-sin(tv))+sin(tv)+tv*(cos(tv))+1

%Item 6
figure(3)
hold on
grid on
% (x^2/25)+(y^2/36)=1

%a)

%b)

%c)
%Titulos y ejes del grafico
title("Carretera parametrizada")
xlabel("Eje x")
ylabel("Eje y")
zlabel("Eje z")
hold off
