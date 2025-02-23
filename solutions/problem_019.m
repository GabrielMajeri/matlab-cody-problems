% Problem 19. Swap the first and last columns

function B = swap_ends(A)
  % Determine how many columns A has
  num_columns = size(A, 2);
  % Make a copy of A
  B = A;

  % Extract the first column
  first_column = A(:, 1);
  % Extract the last column
  last_column = A(:, num_columns);

  % Switch them around
  B(:, 1) = last_column;
  B(:, num_columns) = first_column;
end
