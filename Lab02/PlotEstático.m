% Mostrando o comportamento estático

Ts = 1;
temposimulacao = 100;
npts = temposimulacao/Ts;

y = zeros(1,npts);
u = zeros(1,npts);
u(1,(10/Ts)+1:end) = ones(1,npts-(10/Ts));
q = zeros(1,npts);
q(1,(50/Ts)+1:end) = ones(1,npts-(50/Ts));

for i=2:1:100
    
    y(i) = 0.8*y(i-1) + 0.4*u(i-1) - 0.2*q(i-1);
    
end

% y = 0.8y + 0.4u - 0.2q
% 0.2y = 0.4u - 0.2q
% y = 2u-q

figure;
plot((1:1:npts), y, 'blue', 'LineWidth', 1);
hold on;
plot((1:1:npts), 2*u-q, 'black', 'LineWidth', 1);
ylim([0 2.1])
title('Comportamento estático do motor (2u-q)')
ylabel('Velocidade de Giro')
xlabel('Tempo')