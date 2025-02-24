% Problem 18. Bullseye Matrix

function a = bullseye(n)
  % Initialize an empty array to hold the result
  a = zeros(n, n);

  % Compute the index of the middle element
  middle = (n + 1) / 2;

  % Set the value of the center
  a(middle, middle) = 1;

  % Update all of the remaining concentric rings
  for i = 2:(n+1)/2
    % Row above
    a(middle - i + 1, middle - i + 1 : middle + i - 1) = i;
    % Row below
    a(middle + i - 1, middle - i + 1 : middle + i - 1) = i;
    % Column before
    a(middle - i + 1 : middle + i - 1, middle - i + 1) = i;
    % Column after
    a(middle - i + 1 : middle + i - 1, middle + i - 1) = i;
  end
end
