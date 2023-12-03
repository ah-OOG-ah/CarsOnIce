% Boolean input
function ret = adv_boolput(prompt)

  prompt = cstrcat( ...
    prompt, ...
    " (y/n): " ...
  );

  % Accept and validate input
  while true

    ret = input(cstrcat(prompt), "s");
    if (ret == "y")

      ret = true;
      break
    elseif (ret == "n")

      ret = false;
      break
    else

      disp("Error: must be y or n");
    end
  end
 end
