function ret = find_bank(vmax, us, radius)

  % m/s^2
  g = 9.8;
  syms theta
  eq = vmax^2==((g * radius * (tan(theta) + us)) / (1 - us * tan(theta)));

  % should be degrees
  % Clamp to > 0; we don't care if the road doesn't need to be banked
  ret = clamp(vpasolve(eq, theta), realmax("double"), 0);
end
