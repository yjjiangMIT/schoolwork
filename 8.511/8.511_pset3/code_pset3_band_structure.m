% Basis
n = 2;
dim = (2*n+1)^3+(2*n)^3;
G = zeros(dim, 3);
index = 1;
for i = -n : n
    for j = -n : n
        for k = -n : n
            G(index,:) = 2*[i,j,k];
            index = index + 1;
            if i < n && j < n && k < n
                G(index,:) = 2*[i,j,k] + [1,1,1];
                index = index + 1;
            end
        end
    end
end

% Energy scales
c1 = 9.170068468; % 2pi^2*hbar^2/ma^2 in eV
c2 = -13.58088598; % 1/(4pi*e0)*4pi*Ze^2/(2*pi/a)^2/Omega in eV
% c2 = 0;
c3 = 0.9308422677; % 2pi*Rc/a

% Parameters
a_num = 100;
band_num = 4;

% Storage
E_all = [];
a_range_all = [];

% Calculation
for piece = 1 : 6 % 0r-1X-2W-3L-4r-5K-6X
    if piece == 1 % r-X
        a_max = 1;
        k_str = 'k = [a,0,0];';
    elseif piece == 2 % X-W
        a_max = 0.5;
        k_str = 'k = [1,a,0];';
    elseif piece == 3 % W-L
        a_max = 0.5;
        k_str = 'k = [1-a,0.5,a];';
    elseif piece == 4 % L-r
        a_max = 0.5;
        k_str = 'k = [0.5-a,0.5-a,0.5-a];';
    elseif piece == 5 % r-K
        a_max = 0.75;
        k_str = 'k = [a,a,0];';
    elseif piece == 6 % K-X
        a_max = 0.25;
        k_str = 'k = [0.75+a,0.75-3*a,0];';
    end
    Ek = zeros(band_num,a_num);
    a_range = linspace(0,a_max,a_num);
    for a_index = 1 : a_num
        a = a_range(a_index);
        eval(k_str);
        H = zeros(dim, dim);
        for i = 1 : dim
            gi = G(i,:);
            H(i,i) = c1 * (gi-k) * (gi-k)';
            for j = 1 : dim
                gj = G(j,:);
                if i ~= j
                    gdiff = norm(gi-gj);
                    H(i,j) = c2/gdiff^2 * cos(c3*gdiff);
                end
            end
        end
        E = eig(H)';
        for band_index = 1 : band_num
            Ek(band_index,a_index) = E(band_index);
        end
    end
    if isempty(E_all)
        E_all = Ek;
    else
        E_all = [E_all, Ek];
    end
    if isempty(a_range_all)
        a_range_all = a_range;
    else
        a_range_all = [a_range_all, a_range_all(end)+a_range];
    end
end

% Ef
E_all_sorted = sort(reshape(E_all,1,length(E_all(1,:))*band_num));
Ef = E_all_sorted(round(1.5*length(E_all(1,:))));

% Plot
figure;
hold on;
set(gca, 'fontsize', 30);
xlim([0,max(a_range_all)]);
ylabel('E/eV');
legend_str = 'legend(';
for band_index = 1 : band_num
    plot(a_range_all, E_all(band_index,:), 'linewidth',2);
    legend_str = [legend_str, '''E_', num2str(band_index), '(k)'','];
end
legend_str(end) = [];
legend_str = [legend_str, ');'];
eval(legend_str);
plot([1,1],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([1.5,1.5],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([2,2],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([2.5,2.5],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([3.25,3.25],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([3.5,3.5],[E_all_sorted(1),E_all_sorted(end)], 'color','k', 'linestyle',':', 'linewidth',2);
plot([0,3.5],[Ef,Ef], 'color','k', 'linewidth',2);