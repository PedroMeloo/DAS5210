%Extra (a) e (b)

E = [];
E0 = [10];
E(1) = E0;

P = 10:0.19:29;
D = 7:0.1:17;


dias = 1:1:100;


for i = 2:1:size(dias, 2)
    
    E(i) = E(i - 1) + 10 - 7;

end

%Questão (c)
reta = 3*dias + 7 %Essa reta tem o mesmo comportamento que o laço for acima

figure;
plot(dias, E, 'b');
hold on;
plot(dias, reta, 'r');






