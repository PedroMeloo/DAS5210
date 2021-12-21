%Extra (a)
s = [1 2 3 4 5];

n = s*100;

m(n) = -0.5.*(n.^3)+0.7.*(n.^2)+2.*n+2.*((n-2).^3)-0.1.*((n-3).^2)+2

figure;
plot(n, m([100 200 300 400 500]),'black');
title('Sapatos por Material');
xlabel('Sapatos');
ylabel('Material');

%Extra (b)
coefb = (m([300]) - m([200]))/100;

retab = coef*n([2 3]) - 44316000;

hold on;
plot(n([2 3]), retab,'r');

%Extra (c)
coefc = (coefb*250 - 44316000)/250;
retac = coefc*n;

hold on;
plot(n, retac, 'b');