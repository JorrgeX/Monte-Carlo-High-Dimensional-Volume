dim = 2:1:20;
sphereVol = zeros(size(dim));
cubeVol = zeros(size(dim));

for i = 1:length(dim)
    sphereVol(i) = MCsphereVol(dim(i));
end

for i = 1:length(dim)
    cubeVol(i) = MCcubeVol(dim(i));
end

% Plot the function
figure;
plot(dim, sphereVol, '-o', 'LineWidth', 2);
hold on;

plot(dim, cubeVol, '-o', 'LineWidth', 2);

title('Plot of MC unit volume');
xlabel('Dimensions');
ylabel('Volume');
grid on;
hold off;

legend('sphere', 'cube');