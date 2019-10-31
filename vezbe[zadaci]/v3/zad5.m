function y=zad5()

    % smena: 1/z = w
    % 4x + 2y = 1
    % x + 2y = -1
    % 2x + y + 4w = 0
    A = [
        4 2 0
        1 2 0
        2 1 4];
    b = [
        1
        -1
        0]; 
    s0 = [
        0
        0
        0];

    y = gs(A, b, s0, 100, 10^-5);
    y(3)=1/y(3);

end