function[J] = custo_producao_sapatos(m, x)

% Constantes

J0 = 1;
xref = 0.5;

J = J0 - ((0.1*(m^3)+4)/(0.05*(m^2)-m)) + 0.1*(x-xref)^2

end