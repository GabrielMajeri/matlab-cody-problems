% Problem 12. Fibonacci sequence

function f = fib(n)
  a = 1;
  b = 1;
  for i = 1:n
      % Make a copy of b
      c = b;
      % Add together the last two terms of the sequence
      b = a + b;
      % Overwrite a with the saved copy of b
      a = c;
  end
  f = b;
end
