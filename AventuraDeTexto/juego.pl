% Guía para realización del juego
% Dentro del archivo decisiones.txt estará la estructura del juego, contemplando la gran mayoria de texto a poner en el juego

% El motivo de la guía es dar especificaciones generales y un panorama para
% poder tener establecidos desde antes de comenzar las caracteristicas del juego.

% Quizás no sean muchas opciones dentro del árbol para completar le juego, pero habrán capas para avanzar.

% Contaremos con 3 stats (propuesta) : descanso, estrés y conocimiento, las tres con la escala de 0 = bajo, 3 = alto. 
%Tenerlo alto es bueno en "descanso" y "conocimiento", es malo tener el estrés alto

% La idea es que dependiendo de nuestros stats podamos acceder a una u otra respuesta, para así poder avanzar tendremos que ir pasando por las opciones.
% Puede que una mala decisión te haga tener demasiado estrés y poco conocimiento, lo cual resulte en llegar a una mala resolución.

% Como el juego no debe tener una dificultad muy pequeña, la idea fue esa (añadir stats que nos condiciones) 
% para pelearnos con la forma en la que midamos las cosas y lleguemos a diversos escenarios

% NOTAS DE NOMENCLATURA :

% - Se propone camelCase
% - Uso de palabra especial "«|»" para encontrar de manera más sencilla las secciones 

% --------------------------------------------------------------------------------------------

% AVENTURA DE TEXTO
% Lógica Computacional 2026-2.
%
% Para cargar (propongo) : 
%   swipl juego.pl
%   ?- jugar.


% «|» SECCIÓN 1 - Directivas
% con el formato :- dynamic nombre/aridad podemos decir que un predicado 
% puede cambiar en tiempo de ejecución con assert/retract, es para recordar algo entre turnos

:- dynamic visitado/1.
% Especificamente en este caso para ver si un lugar ya fue visitado.


% «|» SECCIÓN 2 - Estado del juego

estadoInicial( estado( cuarto, [cafe,papel],stats(1,1,1), 1 ) ).
% estado inicial es el estado que tiene : 
% - cuarto como ubicación inicial
% - [cafe,papel] como inventario inicial
% - nivel de stats en orden descanso, estrés, conocimiento