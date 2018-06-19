wrdLn = 11;
theta = double(fi(-0.35*pi+0.07, 1, wrdLn));
u     = double(fi(1+0i, 1, wrdLn));
uTeTh = u .* exp(1i * double(theta));

xerr_log = zeros(1,wrdLn-1);
yerr_log = zeros(1,wrdLn-1);
z_log = zeros(1, wrdLn);
z_log(1) = u;

for niters = 1:(wrdLn - 1)
 v = myCordicRotate0(theta, u, niters);
 %v = EAR(theta, u, niters);
 %v = hybridCordic(theta, u, niters);
 x_err  = abs(real(v) - real(uTeTh));
 y_err  = abs(imag(v) - imag(uTeTh));
 xerr_log(niters) = x_err;
 yerr_log(niters) = y_err;
 z_log(niters+1) = v;
end


%plot_trace(z_log, uTeTh)
figure()
h = plot(1:wrdLn-1, xerr_log, 'r', 1:wrdLn-1, yerr_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
legend('cos\theta (Real part)', 'sin\theta (Imaginary part)')
set(gca,'fontsize',20); set(h, 'linewidth', 2);

