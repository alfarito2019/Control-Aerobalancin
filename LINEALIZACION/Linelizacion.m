%constantes
g = 9.81;

%Parámetros Mecánicos
m_m = 0.00339;    % Masa del Motor
m_b = 0.01056;    % Masa del brazo 
Lm = 0.135;     % Distancia hasta el motor 
Lb = 0.056;     % Distancia hasta el centro de masa
Lb1 = 0.025;     % Distancia hasta el centro del brazo 1
Lb2 = Lm/2;     % Distancia hasta el centro del brazo 2
mb1 = 0.0028;     % masa del brazo 1
mb2 = 0.0077;     % Distancia hasta el centro del brazo 2

J_b = 0.00014;    % Momento de Inercia brazo 
betaF = 0.34*2*J_b;   % Coeficiente de fricción
J_m = 1/12*m_m*((11.4*10^-3)^2+(7*10^-3)^2);    % Momento de Inercia Motor
J = J_m + J_b;       % Momento de Inercia Total   
theta_ref = 80;      % Momento de Inercia Total 

%Constantes

Kf = 0.001191;     % Constante de motor (F/%PWM)0.001191
KPWM_ang = 0.7162;  % PWM/Angulo

%Linealización

num_G = (Lm/J)*Kf;
den_G = [1 betaF/J (Lb*m_b+Lm*m_m)*g*cosd(theta_ref)/J];


%Cotas
J_max = J;
m_m_max = m_m;    
m_b_max = m_b;     
Lm_min = Lm;      
Lb_max = Lb;     
betaF_max = betaF;   
Kf_min = Kf;     


%parámetros simulink
Xr = pi/2;

X2_max = pi;

%beta
a = 1;
beta = (a*J_max-betaF)/(Lm_min*Kf_min)*X2_max  +  (m_m_max + Lb_max*m_b_max/Lm_min)*(g/Kf_min);
beta = ceil(beta);

%beta eq
a_eq = 1;
betaEq = (J_max/(Lm_min*Kf_min)-J/(Lm*Kf))   *   ((a-betaF/J)*X2_max   +   (Lb*m_b +Lm*m_m));
betaEq = ceil(betaEq);

%%Gráficas
% figure(1)
% plot(out.x1.time,out.x1.signals.values)
% legend("Referencia", "Posición")
% figure(2)
% plot(out.x2.time,out.x2.signals.values)
% figure(3)
% plot(out.dx2.time,out.dx2.signals.values)