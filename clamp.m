function ret = clamp(values, maxVal, minVal)

 values(values > maxVal) = maxVal;
 values(values < minVal) = minVal;
 ret = values;
end