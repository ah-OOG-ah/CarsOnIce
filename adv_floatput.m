% Float input
function ret = adv_floatput(prompt, min, max)

  prompt = cstrcat(...
    'Enter ', ...
    prompt, ...
    ': ' ...
  );

  % Accept and validate input
  num = [];
  while isempty(num)

    tmp = str2double(input(cstrcat(prompt), "s"));
    if (tmp >= min && tmp <= max)
      num = tmp;
    else
      disp(cstrcat( ...
             "Error: input must be an number greater than or equal to ", ...
             num2str(min), ...
             " and less than or equal to ", ...
             num2str(max) ...
           ));
    end
  end

  ret = num;
 end
