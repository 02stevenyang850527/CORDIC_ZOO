wrdLn = 11;
theta = double(fi(-0.35*pi+0.07, 1, wrdLn));
u     = double(fi(1+0i, 1, wrdLn));
u_real = 0.5*(exp(theta) + exp(-theta)); 
u_img  = 0.5*(exp(theta) - exp(-theta));

xerr_log = zeros(1,wrdLn-1);
yerr_log = zeros(1,wrdLn-1);

for niters = 1:(wrdLn - 1)
 v = myCordicRotate2(theta, u, niters);
 x_err  = abs(real(v) - u_real);
 y_err  = abs(imag(v) - u_img);
 xerr_log(niters) = x_err;
 yerr_log(niters) = y_err;
end

figure()
h = plot(1:wrdLn-1, xerr_log, 'r', 1:wrdLn-1, yerr_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
legend('cosh\theta (Real part)', 'sinh\theta (Imaginary part)')
set(gca,'fontsize',20); set(h, 'linewidth', 2);