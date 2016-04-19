%Graficar la siguiente funci�n : 7log5(2x+3)
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de 0 a 4*pi con un espacio entre ellos de 0.01.
%Rango de valores de 0 a 4*pi con un intervalo de 0.01.
x = 0:0.01:4*pi;
%Funci�n.
funlog = 7 * ( log(2*x + 3) ) / log(5);
%Graficar funci�n de color azul con '*'
plot ( x, funlog, 'b*');
grid on;
%T�tulo del grafico
title ('a) GR�FICO PRIMERA FUNCI�N');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 
