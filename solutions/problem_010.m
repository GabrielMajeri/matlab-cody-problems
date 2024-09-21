% Problem 10. Determine whether a vector is monotonically increasing

function tf = mono_increase(x)
  tf = true;
  for i = 1:length(x) - 1
    if x(i + 1) <= x(i)
        tf = false;
        break;
    end
  end
end
