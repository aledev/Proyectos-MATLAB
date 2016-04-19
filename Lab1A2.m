%Graficar las siguientes funciones : 
%1) 7log5(2x+3)  
%2) sin(13*(log7(x+2)))
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de 0 a 4*pi con un espacio entre ellos de 0.01.
%Rango de valores de 0 a 4*pi con un intervalo de 0.01.
x = 0:0.01:4*pi;
%PrimeraFunción.
funUno = 7 * ( log(2*x + 3) ) / log(5);
%SegundaFunción.
funDos = sin (13 * ( log(x + 2) / log(7) )  );
%Graficar ambas funciones
plot(x,funUno,'b*',x,funDos,'r*');
%mostrar cuadriculas en el grafico
grid on;
%Título del grafico
title ('a) GRÁFICO PRIMERA Y SEGUNDA FUNCIÓN');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 
%Leyenda para cada funcion.
legend ('y=7log5(2x+3)','y=sin(13*(log7(x+2)))');