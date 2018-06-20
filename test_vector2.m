wrdLn = 11;
u     = double(fi(2.25+1.75i, 1, wrdLn));
u_real = sqrt(2.25^2 - 1.75^2);
u_img = atanh(1.75/2.25);

xerr_log = zeros(1,wrdLn-1);
yerr_log = zeros(1,wrdLn-1);

for niters = 1:(wrdLn - 1)
 v = myCordicVector2(u, niters);
 x_err  = abs(real(v) - u_real);
 y_err  = abs(imag(v) - u_img);
 xerr_log(niters) = x_err;
 yerr_log(niters) = y_err;
end

figure()
h = plot(1:wrdLn-1, xerr_log, 'r', 1:wrdLn-1, yerr_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
set(h, 'linewidth', 2);
h = legend('$$\sqrt{x^2-y^2}$$', 'arctanh(y/x)');
set(h, 'Interpreter','latex')
set(gca,'fontsize',20); 


