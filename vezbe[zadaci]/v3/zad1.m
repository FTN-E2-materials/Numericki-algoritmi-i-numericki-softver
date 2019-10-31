function y = zad1()
    A = [
        9 3 1
        7 8 9
        4 1 9];
    b = [
        33
        54
        13];

    x0 = [
        0
        0
        0];

    y=gs(A, b, x0, 100, 10^-5);

end