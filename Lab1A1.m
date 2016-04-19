%Graficar la siguiente función : 7log5(2x+3)
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de 0 a 4*pi con un espacio entre ellos de 0.01.
%Rango de valores de 0 a 4*pi con un intervalo de 0.01.
x = 0:0.01:4*pi;
%Función.
funlog = 7 * ( log(2*x + 3) ) / log(5);
%Graficar función de color azul con '*'
plot ( x, funlog, 'b*');
grid on;
%Título del grafico
title ('a) GRÁFICO PRIMERA FUNCIÓN');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 
