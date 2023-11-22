% A calculator for banked roads
clear
clc
%pkg load symbolic

% Actually 1 less than the minimum radius because MATLAB is... unintellegent
minRad = 100;
maxRad = 300;
angles = zeros(1, maxRad - minRad);
parfor radius = minRad + 1:maxRad; angles(radius - minRad) = rad2deg(find_bank(40, 0.8, radius)); end;
plot(minRad + 1:maxRad, angles);
xlabel("Turning Radius (m)");
ylabel("Bank Angle (deg)");
%plot(100:20:3000, rad2deg(find_bank(100:20:3000)))



