% Problem 17. Find all elements less than 0 or greater than 10 and replace them with NaN

function y = cleanUp(x)
    y = x;
    y((x < 0) | (x > 10)) = NaN;
end
