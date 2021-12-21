
dJdm = [];

for i = 1:1:(size(Jm, 2)-1)
    
    dJdm(i) = (Jm(i+1) - Jm(i))/(0.1);
    
end

dJdx = [];

for i = 1:1:(size(Jx, 2)-1)
    
    dJdx(i) = (Jx(i+1) - Jx(i))/(0.001);
    
end


subplot(1, 2, 1);
plot(m(1:end-1), dJdm,'g');
grid on;
title('Derivada do custo em função de m');
xlabel('m');
ylabel('dJ/dm');

subplot(1, 2, 2);
plot(x(1:end-1), dJdx,'r');
grid on;
title('Derivada do custo em função de x');
xlabel('x');
ylabel('dJ/dx');