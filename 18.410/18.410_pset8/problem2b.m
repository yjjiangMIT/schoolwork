x = linspace(-0.5,1.5,100);
y1 = 2*x + 0.5;
y2 = -0.2*x + 0.2;
y3 = -16/15*x;
y4 = -16/15*x + 0.5;
y5 = -16/15*x + 1;
y6 = -16/15*x + 1.5;
y7 = -16/15*x + 2;

figure;
xlim([-0.5, 1.5]);
ylim([-0.5, 2]);
set(gca, 'fontsize', 30);
hold on;
plot(x, y1, 'color', 'b', 'linewidth', 2);
plot(x, y2, 'color', 'b', 'linewidth', 2);
plot([min(x),max(x)], [0,0], 'color', 'k', 'linewidth', 2);
plot([0,0], [min(y1),max(y1)], 'color', 'k', 'linewidth', 2);
plot(x, y3, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y4, 'color', 'r', 'linewidth', 2, 'linestyle', '-');
plot(x, y5, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y6, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y7, 'color', 'r', 'linewidth', 2, 'linestyle', '--');