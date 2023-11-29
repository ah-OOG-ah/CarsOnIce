function ret = find_bank(speed, fric, turn_rad, bank_angle)

  if (speed < 0)

    ret = find_speed(fric, turn_rad, bank_angle);
  elseif (fric < 0)

    ret = find_coeff(speed, turn_rad, bank_angle);
  elseif (turn_rad < 0)

    ret = find_radius(speed, fric, bank_angle);
  elseif (bank_angle < 0)

    ret = find_angle(speed, turn_rad, fric);
  end
end

function ret = find_speed(us, radius, theta)

  g = 9.8;
  syms vmax
  eq = vmax^2==((g * radius * (tan(theta) + us)) / (1 - us * tan(theta)));
  ret = vpasolve(eq, vmax, [0 Inf])
end

function ret = find_radius(vmax, us, theta)

  g = 9.8;
  syms radius
  eq = vmax^2==((g * radius * (tan(theta) + us)) / (1 - us * tan(theta)));
  ret = clamp(vpasolve(eq, radius), realmax("double"), 0);
end

function ret = find_coeff(vmax, radius, theta)

  g = 9.8;
  syms us
  eq = vmax^2==((g * radius * (tan(theta) + us)) / (1 - us * tan(theta)));
  ret = clamp(vpasolve(eq, us), realmax("double"), 0);
end

function ret = find_angle(vmax, radius, us)

  g = 9.8;
  syms theta
  eq = vmax^2==((g * radius * (tan(theta) + us)) / (1 - us * tan(theta)));
  ret = rad2deg(clamp(vpasolve(eq, theta), realmax("double"), 0));
end
