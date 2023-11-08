% Proyecto 1. 
% Nombre: Andrés Degollado Muñoz
% No. de cuenta: 318036159
% Presentación 1 de Modelos Ocultos de Markov aplicados al Procesamiento de
% Señales.
% Operaciones aplicadas a la variable independiente de la señal.

% Se define la señal exponencial senoidal amortiguada (una señal a tiempo
% continuo).
% Se define el intervalo de tiempo.
t = 0:0.01:2*pi; 
% Representa la amplitud de la señal.
A = 1; 
% Representa la frecuencia de la señal.
f = 1;
% Representa el decaimiento de la señal. 
alpha=0.25; 
% Se escribe la señal exponencial senoidal amortiguada.
x = A*exp(-alpha*t).*sin(f*2*pi*t); 

% Se realizan las operaciones correspondientes a la variable independiente 
% sobre la señal previamente mencionada.

% Escalamiento del tiempo: Se multiplica cada entrada temporal por un
% escalar.
escalar_1=1.5;
% Reflexión: Se evualúa cada entrada temporal en su inverso aditivo.
desplazamiento=7*pi/2;
% Desplazamiento: Se resta una constante a cada entrada temporal.

% Se aplican las tres operaciones, con el fin de crear una nueva señal.
x_modificado_1 = A*exp(-alpha*escalar_1*(-t-desplazamiento)).*sin(2*pi*f*escalar_1*(-t-desplazamiento));

% Se grafican la señal original y la señal modificada temporalmente. 
subplot(2,2,1);
plot(t, x);
title('Señal Original');
xlabel('Tiempo');
ylabel('Amplitud');

subplot(2,2,2);
plot(t, x_modificado_1);
title('Señal Modificada Temporalmente');
xlabel('Tiempo');
ylabel('Amplitud');
