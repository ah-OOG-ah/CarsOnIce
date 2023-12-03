% Integer input
function ret = adv_strput(prompt, bounds)

  prompt = cstrcat(...
    'Enter ', ...
    prompt, ...
    ': ' ...
  );

  % Accept and validate input
  num = [];
  while isempty(num)

    tmp = input(cstrcat(prompt), "s");
    if (isempty(find(bounds==tmp, 1)))
        disp(cstrcat( ...
            "Error: answer must be in ", ...
            mat2str(bounds) ...
        ));
    else
      num = tmp;
    end
  end

  ret = num;
 end
