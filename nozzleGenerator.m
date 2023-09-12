% Define constants
gamma = 1.4;  % specific heat ratio for air
R = 287;      % gas constant for air [J/kg-K]
P_amb = 101325; % ambient pressure [Pa]

% Input variables
P_ratio = input('Enter the pressure ratio: ');
T_ratio = input('Enter the temperature ratio: ');
M_e = input('Enter the exit Mach number: ');

% Calculate the area ratio
T_e = T_ratio * (1 + ((gamma-1)/2)*M_e^2);
A_ratio = ((gamma+1)/2)^(-(gamma+1)/(2*(gamma-1))) * (P_ratio/(1+((gamma-1)/2)*M_e^2))^(-1/(2*(gamma-1))) * (1/M_e) * sqrt((gamma*R*T_e)/(2*gamma*P_amb));

% Output the area ratio
fprintf('The required area ratio is: %f\n', A_ratio);