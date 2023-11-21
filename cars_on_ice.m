% A calculator for banked roads
clear
clc
%pkg load symbolic

plot(100:1:300, rad2deg(arrayfun(@find_bank, 100:1:300)))
xlabel("Turning Radius (m)");
ylabel("Bank Angle (deg)");
%plot(100:20:3000, rad2deg(find_bank(100:20:3000)))



