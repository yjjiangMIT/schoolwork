x = linspace(-5,10,100);
y1 = 4*x + 16;
y2 = -0.4*x + 3;
y3 = -x;
y4 = -x + 2.5;
y5 = -x + 5;
y6 = -x + 7.5;
y7 = -x + 10;

figure;
xlim([-4.2, 8]);
ylim([-0.5, 16.5]);
set(gca, 'fontsize', 30);
hold on;
plot(x, y1, 'color', 'b', 'linewidth', 2);
plot(x, y2, 'color', 'b', 'linewidth', 2);
plot([min(x),max(x)], [0,0], 'color', 'k', 'linewidth', 2);
plot([0,0], [min(y1),max(y1)], 'color', 'k', 'linewidth', 2);
plot(x, y3, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y4, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y5, 'color', 'r', 'linewidth', 2, 'linestyle', '--');
plot(x, y6, 'color', 'r', 'linewidth', 2, 'linestyle', '-');
plot(x, y7, 'color', 'r', 'linewidth', 2, 'linestyle', '--');