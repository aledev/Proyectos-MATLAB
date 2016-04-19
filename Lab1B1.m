%Graficar la siguiente función en escala normal 2x * e^(5x-7)
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de -30 a 30 con un espacio entre ellos de 0.05.
%Rango de valores de -30 a 30 con un intervalo de 0.05.
x = -30:0.05:30;
%Función en escala normal.
funTres = (2*x).*exp(5*x-7);
%Graficar función de color verde con '*'
plot ( x, funTres, 'g*');
grid on;
%Título del grafico
title ('b) GRÁFICO TERCERA FUNCIÓN ESCALA NORMAL');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 