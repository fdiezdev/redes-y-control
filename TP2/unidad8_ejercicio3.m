%% Estabilidad Absoluta
% 1. Determinar los valores de los polos de la función de transferencia
% 2. Dibujar los polos y ceros en el plano complejo
% 3. Determinar la estabilidad del sistema
% 4. Simular la respuesta temporal para verificar el punto anterior.

%% Sistema 1
G1=tf([50 8], [1 11 23 -8]);
    % Determinamos los valores de polos
    pole(G1)
    % Dibujamos los polos y ceros en el plano complejo
    pzmap(G1)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G1)
    
%% Sistema 2
G2=tf([50 8], [1 11 23 8]);
    % Determinamos los valores de los polos
    pole(G2)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G2)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G2)
    
%% Sistema 3
G3=tf([50 -8],[1 11 23 8]);
    % Determinamos los valores de los polos
    pole(G3)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G3)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G3)

%% Sistema 4
G4=tf([50 8],[1 0 23 8]);
    % Determinamos los valores de los polos
    pole(G4)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G4)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G4)

%% Sistema 5
G5=tf([1 -4],[1 1 3 9 16 10]);
    % Determinamos los valores de los polos
    pole(G5)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G5)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G5)
    
%% Sistema 6
G6=tf([1 8],[1 1 2 2 3]);
    % Determinamos los valores de los polos
    pole(G6)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G6)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G6)
    
%% Sistema 7
G7=tf([1 3 8],[1 4 8 8 7 4]);
    % Determinamos los valores de los polos
    pole(G7)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G7)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G7)
    
%% Sistema 8
G8=tf([1 0], [2 1 2 4 1 6]);
    % Determinamos los valores de los polos
    pole(G8)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G8)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G8)
    
%% Sistema 9
G9=tf(54, [1 13 55 75]);
    % Determinamos los valores de los polos
    pole(G9)
    % Dibujamos polos y ceros en el plano complejo
    pzmap(G9)
    % Determinamos la estabilidad del sistema (usando los polos)
    step(G9)