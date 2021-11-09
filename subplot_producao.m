x = 0:0.001:1; % Estoque
m = 0:0.1:12; % Material encomendado

Jm = [];
Jx = [];

for i = 1:size(m, 2)
    
    %Usou-se a variável x constante como 1
    Jm(i) = custo_producao_sapatos(m(i), 1);
    
end

for i = 1:size(x, 2)
    
    %Usou-se a variável m constante como 5
    Jx(i) = custo_producao_sapatos(5, x(i));
    
end


figure;
subplot(1,2, 1)
plot(m, Jm,'b');
grid on;
title('Custo por material encomendado');
xlabel('Material encomendado');
ylabel('Custo');


subplot(1, 2, 2);
plot(x, Jx,'black');
grid on;
title('Custo por estoque');
xlabel('Estoque');
ylabel('Custo');



    
