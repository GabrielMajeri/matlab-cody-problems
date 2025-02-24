% Problem 16. Return the largest number that is adjacent to a zero

function y = nearZero(x)
  y = -Inf;
  n = length(x);
  for i = 1:n
    if ((i > 1) && x(i - 1) == 0) || ((i < (n - 1)) && (x(i + 1) == 0))
      z = x(i);
      % Check that it's not zero and that it's greater than the previous maximum
      if (z ~= 0) && (z > y)
        y = z;
      end
    end
  end
end
