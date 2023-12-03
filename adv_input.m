function ret = adv_input(type, prompt, bound, max)
%ADV_INPUT An enhanced input function

    switch type
        case "string"
            ret = adv_strput(prompt, bound);
        case "int"
            ret = adv_intput(prompt, bound, max);
        case "float"
            ret = adv_floatput(prompt, bound, max);
        case "bool"
            ret = adv_boolput(prompt);
        otherwise
            disp("WARNING! INVALID INPUT TYPE!");
    end
end

