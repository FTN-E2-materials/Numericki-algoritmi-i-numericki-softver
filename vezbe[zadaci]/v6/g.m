function g = g(file)
    games = xlsread(file);

    g = sum(games(:, 1) - games(:, 2));
end