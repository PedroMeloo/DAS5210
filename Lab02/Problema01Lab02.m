% Sistema do Motor (Caso Discreto)

Ts = 1;
temposimulacao = 100;
npts = temposimulacao/Ts;
%t = k*Ts
%t/Ts = k amostra K

y = zeros(1,npts);
u = zeros(1,npts);
u(1,(10/Ts)+1:end) = ones(1,npts-(10/Ts));
q = zeros(1,npts);
q(1,(50/Ts)+1:end) = 0*ones(1,npts-(50/Ts));

for i=2:1:npts
    
    y(i) = 0.8*y(i-1) + 0.4*u(i-1) - 0.2*q(i-1);
    
end

subplot(3,1,1);
stem((1:1:npts), y, 'b', 'LineWidth', 1);
ylim([0 2.1])
title('Motor de corrente contínua')
xlabel('Tempo');
ylabel('Velocidade de giro')
grid on;

subplot(3,1,2)
stem((1:1:npts), u, 'm', 'LineWidth', 1);
ylim([0 1.1])
title('Variável manipulada');
xlabel('Tempo');
ylabel('Tensão aplicada');
grid on;

subplot(3,1,3);
stem(1:1:100, q, 'r', 'LineWidth', 1);
ylim([-1 1])
title('Perturbação constante');
xlabel('Tempo');
ylabel('Torque de carga');
grid on;
