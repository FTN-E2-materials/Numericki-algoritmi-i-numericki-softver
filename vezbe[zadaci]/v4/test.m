function [fMin,fMax] = test()
   f = @(x) sin(x);
   a = pi/3;
   b = 4*pi/3;
   x = linspace(a, b, 100);
   fX = f(x);
   fMin = min(fX);
   fMax = max(fX);
   plot(x, fX, 'blue', [a b], [0 0], 'black'), hold on
   plot([a a], [fMin fMax], 'red', [b b], [fMin fMax], 'red')
   
   zero = (a + b)/2; 
   fZero = f(zero);
   plot([zero zero], [fMin fMax], 'green', zero, fZero, 'o green')
   
   if f(a)*fZero < 0   
       b = zero;
   else
       a = zero;
   end
   plot([zero zero], [fMin fMax], 'red', zero, fZero, 'o red') 
   
   
end