% Problem 20. Summing digits

function b = sumDigits(n)
  pow2 = 2^n;
  b = 0;
  while pow2 ~= 0
    b = b + mod(pow2, 10);
    pow2 = fix(pow2 / 10);
  end
end
