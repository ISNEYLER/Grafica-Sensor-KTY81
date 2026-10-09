% Estudiante: Isneyler Mosquera Preciado

% --- Datos del datasheet para KTY81/110 ---
% Temperatura en °C
T = [-55, -50, -40, -30, -20, -10, 0, 10, 20, 25, 30, ...
     40, 50, 60, 70, 80, 90, 100, 110, 120, 125, 130, 140, 150];

% Resistencia típica (Typ)
R_typ = [490, 515, 567, 624, 684, 747, 815, 886, 961, 1000, 1040, ...
         1122, 1209, 1299, 1392, 1490, 1591, 1696, 1805, 1915, 1970, 2023, 2124, 2211];

% Resistencia mínima (Min)
R_min = [475, 500, 552, 609, 669, 733, 802, 874, 950, 990, 1029, ...
         1108, 1192, 1278, 1369, 1462, 1559, 1659, 1762, 1867, 1919, 1970, 2065, 2145];

% Resistencia máxima (Max)
R_max = [505, 530, 582, 638, 698, 761, 828, 898, 972, 1010, 1051, ...
         1136, 1225, 1319, 1416, 1518, 1623, 1733, 1847, 1963, 2020, 2077, 2184, 2277];

% --- Graficación ---
figure('Name', 'Curva Resistencia vs Temperatura - KTY81/110');

% Curva típica
plot(T, R_typ, '-b', 'LineWidth', 2, 'DisplayName', 'Típica (Typ)');
hold on;

% Curvas límite de tolerancia (Mínima y Máxima)
plot(T, R_min, '--r', 'LineWidth', 1.2, 'DisplayName', 'Mínima (Min)');
plot(T, R_max, '--r', 'LineWidth', 1.2, 'DisplayName', 'Máxima (Max)');

% Formato y diseño del gráfico
grid on;
title('Curva Temperatura vs Resistencia - Sensor KTY81/110');
xlabel('Temperatura (°C)');
ylabel('Resistencia (\Omega)');
legend('Location', 'northwest');

xlim([-50, 150]);                        
xticks(-50:10:150);                        
ylim([450, 2300]);
hold off;
