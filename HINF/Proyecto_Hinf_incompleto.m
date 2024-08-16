% Parámetros Mecánicos
m_m = 0.00339;    % Masa del Motor
m_b = 0.01056;    % Masa del brazo 
Lm = 0.135;       % Distancia hasta el motor 
Lb = 0.46;        % Distancia hasta el centro de masa
Kf = 0.001191;    % Constante de motor (V/N)
J_b = 0.000142256; % Momento de Inercia brazo 
betaF = 0.2982*2*J_b; % Coeficiente de fricción
J = J_b;          % Momento de Inercia Total (sin J_m)
theta_ref = 70;   % Ángulo de referencia

% Parámetros H_inf
num_G = 21*Kf*Lm/J;
den_G = [1 betaF/J + (Lb*m_b+Lm*m_m)*g*cosd(theta_ref)/J];

% Convertir el sistema a espacio de estados
[A, B, C, D] = tf2ss(num_G, den_G);
sys_p = ss(A, B, C, D);

% Definir las matrices de peso para el problema H_inf
W1 = tf([1 0.1], [1 10]);  % Peso de entrada ajustado
W2 = tf([1], [1 0.1]);      % Peso de salida ajustado

% Formar el sistema extendido
sys_ext = augw(sys_p, W1, W2, []);

% Diseñar el controlador H_inf
[K, CL, gamma] = hinfsyn(sys_ext, 1, 1);

% Mostrar el controlador
disp('Controlador H_inf diseñado:');
K = K
