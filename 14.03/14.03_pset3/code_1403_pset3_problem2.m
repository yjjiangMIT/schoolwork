figure;
hold on;
xlim([0, 8]);
ylim([0, 8]);
ax = gca;
ax.XTick = [0, 8];
ax.YTick = [0, 8];
set(ax, 'fontsize', 30);
axis('square');
for i = 0 : 8
    if i == -1 % i == 2 || i == 4
        color = [0,0.3,0.7];
        linewidth = 4;
    else
        color = 'c';
        linewidth = 2;
    end
    plot([i,i], [i,8], 'color', color, 'linewidth', linewidth);
    plot([i,8], [i,i], 'color', color, 'linewidth', linewidth);
end
for i = 0 : 16
    if i == -1 % i == 8
        color = [0,0.4,0.1];
        linewidth = 4;
    else
        color = 'g';
        linewidth = 2;
    end
    plot([0,i], [i,0], 'color', color, 'linewidth', linewidth);
end
plot([0,8], [0,8], 'color', 'k', 'linewidth', 2);
plot(2, 6, 'marker', 'o', 'markerfacecolor', 'r', 'markeredgecolor', 'r', 'markersize', 20);
% plot(4, 4, 'marker', 'o', 'markerfacecolor', 'm', 'markeredgecolor', 'r', 'markersize', 20);