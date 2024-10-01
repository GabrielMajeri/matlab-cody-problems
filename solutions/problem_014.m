% Problem 14. Find the numeric mean of the prime numbers in a matrix

function out = meanOfPrimes(in)
  out = 0;
  count = 0;

  for i = reshape(in, 1, [])
    if isPrime(i)
      out = out + i;
      count = count + 1;
    end
  end

  % Compute the average
  out = out / count;

  % Helper function to determine whether a given n is prime
  function result = isPrime(n)
    % Start with the assumption that n is prime
    result = 1;

    if n <= 1
      result = 0;
      return;
    end

    if n == 2
      return;
    end

    if mod(n, 2) == 0
      % If it's even, it cannot be prime
      result = 0;
      return;
    end

    divisor = 3;
    sqrt_of_n = sqrt(n);
    while divisor <= sqrt_of_n
      if mod(n, divisor) == 0
        result = 0;
        return;
      end

      divisor = divisor + 2;
    end
  end
end
