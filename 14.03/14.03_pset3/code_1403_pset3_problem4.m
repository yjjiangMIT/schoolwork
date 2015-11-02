figure;
hold on;
set(gca, 'fontsize', 30);
xlabel('L^S');
ylabel('E[C]');
plot([0,7000], [0,7], 'color', 'k', 'linewidth', 2);
plot([0,4000], [4,4], 'color', 'b', 'linewidth', 2);
plot([4000,4000], [0,4], 'color', 'b', 'linewidth', 2);
plot([0,2000*sqrt(10)], [2*sqrt(10),2*sqrt(10)], 'color', 'r', 'linewidth', 2);
plot([2000*sqrt(10),2000*sqrt(10)], [0,2*sqrt(10)], 'color', 'r', 'linewidth', 2);