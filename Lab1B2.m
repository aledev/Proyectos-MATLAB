%Graficar la siguiente funci�n en escala logaritmica 2x * e^(5x-7)
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de -30 a 30 con un espacio entre ellos de 0.05.
%Rango de valores de -30 a 30 con un intervalo de 0.05.
x = -30:0.05:30;
%Funci�n en escala logartimica.
funTres = (2*x).*exp(5*x-7);
%Graficar funci�n de color con el simbolo'*'
semilogy (x, funTres, '*c');
grid on;
%T�tulo del grafico
title('b) GR�FICO TERCERA FUNCI�N ESCALA LOG.');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 