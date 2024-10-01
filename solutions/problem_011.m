% Problem 11. Back and Forth Rows

function b = back_and_forth(n)
  % Initialize an empty matrix to hold the result
  b = zeros(n);
  counter = 1;
  % Construct the matrix row-by-row
  for row = 1:n
    % ... and column-by-column
    for column = 1:n
      % On odd-numbered rows we go from left-to-right,
      % on even-numbered rows we go from right-to-left.
      if mod(row, 2) == 1
        b(row, column) = counter;
      else
        b(row, n - column + 1) = counter;
      end
      counter = counter + 1;
  end
end
