gamma_range = linspace(0, 0.001, 100);
Q1 = zeros(1, length(gamma_range));
Q2 = Q1;
Q3 = Q1;
Q4 = Q1;
C1 = Q1;
C2 = Q1;
C3 = Q1;
C4 = Q1;
E0 = 20;
U2 = 2;
U1 = 1;
for k = 1 : length(gamma_range)
    gamma = gamma_range(k);
    Ek = E0 * (1/4 + gamma^2 + (1-gamma)^2);
    Ekmg = E0 * (1/4 + gamma^2 + (1+gamma)^2);
    %H = [Ek U1 U2 U1; U1 Ek U1 U2; U2 U1 Ekmg U1; U1 U2 U1 Ekmg];
    %H = [Ek-U1 0 U2-U1 0; 0 Ek+U1 0 U2+U1; U2-U1 0 Ekmg-U1 0; 0 U2+U1 0 Ekmg+U1];
    %H0 = [-U1 0 U2-U1 0; 0 U1 0 U2+U1; U2-U1 0 -U1 0; 0 U2+U1 0 U1];
    %dH = 4*gamma*E0 * diag([0 0 1 1]);
    H0 = diag([-U2 -U2 U2-2*U1 U2+2*U1]);
    dH = 2*gamma*E0 * [1 0 -1 0; 0 1 0 -1; -1 0 1 0; 0 -1 0 1];
    H = H0 + dH;
    [P,Q] = eig(H);
    Q = diag(Q)' - [-U2 -U2 U2-2*U1 U2+2*U1] + Ek - 5/4*E0;
    Q1(k) = Q(1);
    Q2(k) = Q(2);
    Q3(k) = Q(3);
    Q4(k) = Q(4);
    C1(k) = -2*gamma^2*(E0/(U2-U1)-1)*E0;
    C2(k) = -2*gamma^2*(E0/(U2+U1)-1)*E0;
    C3(k) = 2*gamma^2*(E0/(U2-U1)+1)*E0;
    C4(k) = 2*gamma^2*(E0/(U2+U1)+1)*E0;
end
figure;
hold on;
plot(gamma_range, Q1);
plot(gamma_range, C1);
plot(gamma_range, Q2);
plot(gamma_range, C2);
plot(gamma_range, Q3);
plot(gamma_range, C3);
plot(gamma_range, Q4);
plot(gamma_range, C4);