% Integer input
function ret = adv_intput(prompt, min, max)

  prompt = cstrcat(...
    'Enter ', ...
    prompt, ...
    ': ' ...
  );

  % Accept and validate input
  num = [];
  while isempty(num)

    tmp = str2double(input(cstrcat(prompt), "s"));
    if (tmp ~= floor(tmp))
        disp("Error: input must be an integer");
    elseif (tmp < min)
        disp(cstrcat( ...
            "Error: input must be greater than or equal to ", ...
            num2str(min) ...
        ));
    elseif (tmp > max)
        disp(cstrcat( ...
            "Error: input must be less than or equal to ", ...
            num2str(max) ...
        ));
    else
      num = tmp;
    end
  end

  ret = num;
 end
