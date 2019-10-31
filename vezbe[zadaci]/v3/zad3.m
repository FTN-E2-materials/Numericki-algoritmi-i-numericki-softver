function y=zad3()
    % A = [
    %     0 1 2
    %     1 2 0
    %     -1 -1 0];

    % fora je napraviti da (D+L)(D-matrica sadrzana od elemenata dijagonale)
    % (L-matrica sadrzana od elemenata ispod glavne dijagonale)
    % bude != 0 tj ne bude 0 zbog deljenja sa nulom 
    % (D+L)^-1 <- zbog ovoga
    A = [
        4 1 2
        1 2 0
        -1 -1 2];
    b = [
        1
        2
        3];
    x0 = [
        0
        0
        0];

    y = gs(A, b, x0, 100, 10^-5);

end