function y=zad2()
    A = [
        sin(1.1960) sin(0.3424) sin(0.1747)
        sin(0.2449) sin(1.0565) sin(0.0751)
        sin(0.1980) sin(0.2631) sin(0.9159)];
    %ili smo mogli A prepisati i onda uraditi A=sin(A)
    %jer je isti efekat
    b = [
       -2.6827
       -3.7424
        0.9456];
    x0 = [
        0
        0
        0];

    y=gs(A, b, x0, 100, 10^-5)

end