% A calculator for banked roads
clear
clc
%pkg load symbolic

% Select an operating mode
modes = [ ...
    "angle", ...
    "speed", ...
    "radius", ...
];
prompt = cstrcat( ...
    "a mode for the calculator ", ...
    mat2str(modes) ...
);
mode = adv_input("string", prompt, modes, 0);



% Actually 1 less than the minimum radius because MATLAB is... unintellegent
minRad = 100;
maxRad = 300;
speed = 40;
fricton_coef = 0.8;
angle = deg2rad(3);
angles = zeros(1, maxRad - minRad);
parfor radius = minRad + 1:maxRad; angles(radius - minRad) = find_bank(speed, fricton_coef, radius, -1); end
plot(minRad + 1:maxRad, angles);
xlabel("Turning Radius (m)");
ylabel("Bank Angle (deg)");
%plot(100:20:3000, rad2deg(find_bank(100:20:3000)))



