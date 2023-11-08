% Proyecto 1. 
% Nombre: Andrés Degollado Muñoz
% No. de cuenta: 318036159
% Presentación 1 de Modelos Ocultos de Markov aplicados al Procesamiento de
% Señales.
% Operaciones aplicadas a la variable dependiente de la señal.

% Se define una señal periódica a tiempo discreto .
% Se crea un vector de tiempo discreto.
n = -4:0.25:4;
% Representa la amplitud de la señal. 
A=1;
% Representa la frecuencia de la señal.
f=1;

% Se escribe la señal periódica a tiempo discreto.
x=A*cos(f*pi*(n/2)-(pi/2)); 

% Se realizan las operaciones correspondientes a la variable dependiente 
% sobre la señal previamente mencionada.
% Adición: Se define otra señal periódica, la cual será añadida a la
% primera señal. 
y=sin(pi*(n/4)+(pi/6));

% Multiplicación: Se define otra señal periódica, la cual será multiplicada
% a la suma de señales x+y.
z=cos(pi*(n/4)-(pi/8));

% Escalamiento de la Amplitud: Se multiplica el siguiente valor a la señal
% producida por (x+y)*z.
escalar=3;

% Se aplican las tres operaciones, con el fin de crear una nueva señal.
x_modificado= escalar.*(x+y).*z;

% Se grafica la señal original.
subplot(2,2,1);
stem(n, x);
title('Señal a Tiempo Discreto');
xlabel('Muestras (n)');
ylabel('Amplitud');

% Se grafica la señal modificada en la amplitud.
subplot(2,2,2);
stem(n, x_modificado);
title('Señal Modificada en la Amplitud');
xlabel('Muestras (n)');
ylabel('Amplitud');
