
#Nicolas Navarro

#1)
i=[0:0.1:0.9] #Valores para la tasa anual de inflacion
r=[0.1:0.1:1] #Valores para la tasa de impuestos del inversor

#Funcion que describe el valor de una inversion de $100.000 a una tasa del 10% anual
V=100000.*((1+0.1.*(1-r))./(1+i)).^10 #Funcion V(i,r)

#2) Graficar la curva de nivel para el nivel de inversion $120.000
figure (1)
hold on
grid on

#pkg load symbolic
#syms ru iu
#Vu= 120000==100000.*((1+0.1.*(1-ru))./(1+iu)).^10 #Funcion V(i,r)
[i,r]=meshgrid(i,r);

V= 100000.*((1+0.1.*(1-r))./(1+i)).^10 #Funcion V(i,r)

contour(i,r,V,1)

hold off
grid off


#3)
figure(2)
hold on
grid on
surf(i,r,V)
hold off


