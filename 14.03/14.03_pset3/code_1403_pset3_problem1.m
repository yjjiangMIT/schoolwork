Q1 = 0 : 0.01 : 1;
P1 = Q1 + 2;

Q2 = 1 : 0.01 : 3;
P2 = 3 * ones(1,length(Q2));

Q3 = 3 : 0.01 : 6;
P3 = 3 * ones(1,length(Q3));

Q4 = 1 : 0.01 : 2.5;
P4 = Q4 + 2;

Q5 = 2.5 : 0.01 : 6;
P5 = 4.5 * ones(1,length(Q5));

Q6 = 3 : 0.01 : 6;
P6 = Q6;

QD = 0 : 0.01 : 6;
PD = 3 * (-QD + 6);

% figure;
% hold on;
% set(gca, 'fontsize', 30);
% xlabel('Q');
% ylabel('P');
% xlim([0, 6]);
% ylim([0, 6]);
% plot([Q1,Q2,Q3], [P1,P2,P3], 'color', 'b', 'linewidth', 2);
% plot([Q1,Q4,Q5], [P1,P4,P5], 'color', 'r', 'linewidth', 2);
% plot([Q1,Q2,Q6], [P1,P2,P6], 'color', 'g', 'linewidth', 2);
% plot(QD, PD, 'color', 'k', 'linewidth', 2)
% legend('Free', 'Tariff', 'Quota', 'Demand');

figure;
subplot(1,3,1);
hold on;
set(gca, 'fontsize', 30);
xlabel('Q');
ylabel('P');
xlim([0, 6]);
ylim([0, 18]);
plot([Q1,Q2,Q3], [P1,P2,P3], 'color', 'b', 'linewidth', 2);
plot(QD, PD, 'color', 'k', 'linewidth', 2)
subplot(1,3,2);
hold on;
set(gca, 'fontsize', 30);
xlabel('Q');
ylabel('P');
xlim([0, 6]);
ylim([0, 18]);
plot([Q1,Q4,Q5], [P1,P4,P5], 'color', 'b', 'linewidth', 2);
plot(QD, PD, 'color', 'k', 'linewidth', 2)
subplot(1,3,3);
hold on;
set(gca, 'fontsize', 30);
xlabel('Q');
ylabel('P');
xlim([0, 6]);
ylim([0, 18]);
plot([Q1,Q2,Q6], [P1,P2,P6], 'color', 'b', 'linewidth', 2);
plot(QD, PD, 'color', 'k', 'linewidth', 2)