%Parámetros Mecánicos
m_m = 0.00339;    % Masa del Motor
m_b = 0.01056;    % Masa del brazo 
Lm = 0.135;     % Distancia hasta el motor 
Lb = 0.46;     % Distancia hasta el centro de masa
Lb1 = 0.025;     % Distancia hasta el centro del brazo 1
Lb2 = Lm/2;     % Distancia hasta el centro del brazo 2
mb1 = 0.0028;     % masa del brazo 1
mb2 = 0.0077;     % Distancia hasta el centro del brazo 2
Kf = 0.001191;     % Constante de motor (V/N)
J_b = 0.00014;    % Momento de Inercia brazo 
betaF = 0.34*2*J_b;   % Coeficiente de fricción
J_m = 0;             %1/12*m_m*((11.4*10^-3)^2+(7*10^-3)^2);    % Momento de Inercia Motor
J = J_m + J_b;       % Momento de Inercia Total   
theta_ref = 70;   % Ángulo de referencia

