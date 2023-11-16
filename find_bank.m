function ret = find_bank(radius)

  g = 9.8;
  us = 0.7;
  R = radius;
  theta = deg2rad(0:20);
  vmax = 40;
  eq = vmax==sqrt(g * R * (sin(theta) + us * cos(theta)) / (cos(theta) - us * sin(theta)));


  ret = vpasolve(eq, theta);
end
