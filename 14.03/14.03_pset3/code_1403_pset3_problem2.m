figure;
hold on;
xlim([0, 8]);
ylim([0, 8]);
set(gca, 'fontsize', 30);
axis('square');
for i = 0 : 8
    plot([i,i], [i,8], 'color', 'c', 'linewidth', 2);
    plot([i,8], [i,i], 'color', 'c', 'linewidth', 2);
end
for i = 0 : 16
    plot([0,i], [i,0], 'color', 'g', 'linewidth', 2);
end
plot(2, 6, 'marker', 'o', 'markerfacecolor', 'r', 'markeredgecolor', 'r', 'markersize', 10);