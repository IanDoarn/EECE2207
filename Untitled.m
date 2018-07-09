A = logspace(1,4,100);
anon_RV = @(R, C, L, V) (abs(R*((-V.^2)*L*C))/sqrt((R-R*(V.^2)*L*C).^2 + (V.*L).^2));
%f = anon_RV(100, 160e-6, 45, A);
R = 500; C = 160e-6; L = 45; V = A;
plot(A, anon_RV(R, C, L, A));