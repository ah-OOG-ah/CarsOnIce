function ret = adv_input(type, prompt, min, max)
%ADV_INPUT An enhanced input function

    switch type
        case "int"
            ret = adv_intput(prompt, min, max);
        case "float"
            ret = adv_floatput(prompt, min, max);
        case "bool"
            ret = adv_boolput(prompt);
        otherwise
            disp("WARNING! INVALID INPUT TYPE!");
    end
end

