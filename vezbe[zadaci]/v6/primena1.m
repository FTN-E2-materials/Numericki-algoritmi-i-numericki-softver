clc
clear all

games = xlsread('games.xls');

MR = games(:,1)';
home = games(:,5)';
draw = games(:,6)';
away = games(:,7)';

order = 7;
pH = lSquares(MR, home, order);
pD = lSquares(MR, draw, order);
pA = lSquares(MR, away, order);
pHome = polyval(pH, MR);
pDraw = polyval(pD, MR);
pAway = polyval(pA, MR);

% r2 = SSR/SST
r2Home = sum((pHome - mean(home)).^2)/sum((home - mean(home)).^2)
r2Draw = sum((pDraw - mean(draw)).^2)/sum((draw - mean(draw)).^2)
r2Away = sum((pAway - mean(away)).^2)/sum((away - mean(away)).^2)

gHome1 = g('home.xls');
gAway1 = g('away.xls');
MR1 = gHome1 - gAway1;
pHome1 = polyval(pH, MR1);
pDraw1 = polyval(pD, MR1);
pAway1 = polyval(pA, MR1);
QHome1 = round(100/pHome1)/100
QDraw1 = round(100/pDraw1)/100
QAway1 = round(100/pAway1)/100

x = linspace(min(MR), max(MR), 100);
figure('Units', 'normalized', 'Position', [0.1 0.1 0.8 0.8]);
subplot(1, 3, 1)
scatter(MR, home, 'black'), hold on
plot(x, polyval(pH, x), 'red')
scatter(MR1, pHome1, 'red'), hold off
xlabel('MR')
ylabel('pHome')
subplot(1, 3, 2)
scatter(MR, draw, 'black'), hold on
plot(x, polyval(pD, x), 'red')
scatter(MR1, pDraw1, 'red'), hold off
xlabel('MR')
ylabel('pDraw')
subplot(1, 3, 3)
scatter(MR, away, 'black'), hold on
plot(x, polyval(pA, x), 'red')
scatter(MR1, pAway1, 'red'), hold off
xlabel('MR')
ylabel('pAway')

