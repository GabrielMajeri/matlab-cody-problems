% Problem 4. Make a checkerboard matrix

function a = checkerboard(n)
  a = zeros(n);

  for i = 1:1:n
    start = 1 + (1 - mod(i, 2));
    for j = start:2:n
      a(i, j) = 1;
    end
  end
end
