close all; clear; clc;

% - getSystem() Costruisce il sistema che poi si va a considerare
% - getPlanet() è una libreria di pianeti di cui si possono modificare masse,
%   velocità e posizioni                                                        
% - comp() si occupa di effettuare tutti i calcoli di traiettoria,
%   attraverso approssimazioni di Taylor al secondo ordine della posizione
%   all'istante x(t+h) e della velocità v(t+h)
% - F() è una funzione ausiliaria a comp() poichè era difficile scrivere
%   ciò che serviva come anonymous function
% - Il file Constants contiene tutte le costanti, sia fisiche che del
%   metodo di risoluzione, come passo e numero di iterate
% - General() è il file da compilare per far partire il programma

System = getSystem();

%trajectoryDisplay(System);

dT = Constants.dt;
iter = 3650;
t_min = 0;
t_max = iter*dT;

[x,vx,y,vy] = computation(System, t_min, t_max, dT);