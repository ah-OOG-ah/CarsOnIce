% Matlab compat
function ret = cstrcat(varargin)
  ret = "";
  for i = 1:length(varargin)
    ret = append(ret, varargin{i});
  end
end
