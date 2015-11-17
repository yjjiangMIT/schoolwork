x = linspace(0, 300, 1000);
y = 5 * sqrt(300-x);

figure;
hold on;
set(gca, 'fontsize', 30);
xlabel('X = paper');
ylabel('Y = software');
plot(x, y, 'color', 'b', 'linewidth', 2);