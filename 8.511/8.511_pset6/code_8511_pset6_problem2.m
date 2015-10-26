km = 1;
alpha = 0.8;
n = 500;
Ef = 0.1;

[kx, ky] = meshgrid(linspace(-km,km,n), linspace(-km,km,n));
E1 = kx.^2 + ky.^2;
E2 = alpha * sqrt(E1);
Eplus = E1 + E2;
Eminus = E1 - E2;

figure;
hold on;
axis('square');
set(gca, 'fontsize', 30);
xlabel('k_x');
ylabel('k_y');
zlabel('E(k)');
mesh(kx, ky, Eplus);
mesh(kx, ky, Eminus);

figure;
hold on;
axis('square');
set(gca, 'fontsize', 30);
xlabel('k_x');
ylabel('k_y');
xlim([-km, km]);
ylim([-km, km]);
Kfplus = alpha/2 + sqrt(alpha^2+4*Ef)/2;
Kfminus = -alpha/2 + sqrt(alpha^2+4*Ef)/2;
polar(linspace(0,2*pi,n), Kfplus*ones(1,n));
polar(linspace(0,2*pi,n), Kfminus*ones(1,n));