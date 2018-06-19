wrdLn = 11;
u     = double(fi(pi+1i, 1, wrdLn));
div = 1/pi;

div_log = zeros(1,wrdLn-1);

for niters = 1:(wrdLn - 1)
 v = myCordicVector1(u, niters);
 div_err  = abs(v - div);
 div_log(niters) = div_err;
end

figure()
h = plot(1:wrdLn-1, div_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
legend('y/x')
set(gca,'fontsize',20); set(h, 'linewidth', 2);