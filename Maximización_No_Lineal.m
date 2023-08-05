
%Nicolas Navarro
%F(x,y)=sqrt(xy) Buscamos el maximo de esta funcion
%G(x,y)=-sqrt(xy) Se usa esta debido a que solo se pueden calcular minimos

%Condicion 290x+190y=1000000
U=@(x)-sqrt(x(1)*x(2));
xc=[3,5]; %x0
a=[]; %Condicion
b=[]; %igualdad condicion
aeq=[290,190];
beq=1000000;
Aux=fmincon(U,xc,a,b,aeq,beq)

%X=1724 (Trencitos)
%Y=2631 (Costa)
