%Act 6

hold on
grid on

%Valor maximo de t
a= 2*pi;
t= [0:0.1:a];

%F(t)=5*cos(t)i+6*sin(t)j

%Entrega de valores a r(t)
X= 5*(cos(t));
Y= 6*(sin(t));
Z=t.*0;

%Titulos y ejes del grafico
title("Grafico de la carretera parametrizada")
xlabel("Eje x")
ylabel("Eje y")
zlabel("Eje Z")

%Ploteo de la carretera
plot3(X,Y,Z)


