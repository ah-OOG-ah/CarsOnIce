function ret = find_bank(radius)

  g = 9.8;
  us = 0.7;
  R = radius;
  theta = deg2rad(2);
  %vmax = 40;
  syms vmax
  eq = vmax==sqrt(g * R * (tan(theta) + us) / (1 - us * tan(theta)));


  ret = vpasolve(eq, vmax);
end
