function ret = find_bank(radius)

  % m/s^2
  g = 9.8;
  % dimensionless
  us = 0.7;
  % meters
  R = radius;
  % radians
  %theta = deg2rad(2);
  % m/s
  vmax = 40;
  syms theta
  eq = vmax^2==((g * R * (tan(theta) + us)) / (1 - us * tan(theta)));

  % should be degrees
  % Clamp to > 0; we don't care if the road doesn't need to be banked
  ret = clamp(vpasolve(eq, theta), realmax("double"), 0);
end
