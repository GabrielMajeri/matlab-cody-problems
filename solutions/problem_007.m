% Problem 7. Column Removal

function B = column_removal(A, n)
  % Copy the matrix to avoid modifying the input
  copy_of_A = repmat(A, 1);
  copy_of_A(:, n) = [];
  B = copy_of_A;
end
