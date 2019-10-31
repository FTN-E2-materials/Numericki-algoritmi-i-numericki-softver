function y=zad4()
    % smena: 1/y = w
    % 2x + w = 1
    % x + 2w = -2
    A = [
        2 1
        1 2];
    b = [
        1
        -2];
    s0 = [
        0
        0];

    y = gs(A, b, s0, 100, 10^-5);
    y(2)=1/y(2);                %kako bi smenu vratili uspesno

  

end