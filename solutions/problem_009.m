% Problem 9. Who Has the Most Change?

function b = most_change(a)
  values = a * [0.25; 0.05; 0.10; 0.01];
  [~, b] = max(values);
end
