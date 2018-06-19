wrdLn = 11;
z = double(fi(0.15, 1, wrdLn));
u     = double(fi(0.17 + 0.5i, 1, wrdLn));
xy = 0.15*0.17;
fprintf('x*y, x: %f, y: %f\n', real(z), real(u));
xy_log = zeros(1,wrdLn-1);

for niters = 1:(wrdLn - 1)
 v = myCordicRotate1(z, u, niters);
 v = v - imag(u);
 xy_v = abs(v-xy);
 xy_log(niters) = xy_v;
end

figure()
h = plot(1:wrdLn-1, xy_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
legend('x*y')
set(gca,'fontsize',20); set(h, 'linewidth', 2);

