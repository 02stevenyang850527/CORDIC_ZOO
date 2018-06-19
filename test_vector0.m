wrdLn = 11;
u     = double(fi(1.5+2i, 1, wrdLn));
theta = phase(u);

mag_log = zeros(1,wrdLn-1);
ang_log = zeros(1,wrdLn-1);

for niters = 1:(wrdLn - 1)
 v = myCordicVector0(u, niters);
 mag = real(v); ang = imag(v);
 mag_err  = abs(abs(u) - mag);
 ang_err  = abs(theta  - ang);
 mag_log(niters) = mag_err;
 ang_log(niters) = ang_err;
end

figure()
h = plot(1:wrdLn-1, mag_log, 'r', 1:wrdLn-1, ang_log, 'b');
xlabel('# of iteration'); ylabel('Absolute Error'); grid on;
legend('Magnitude', 'Phase')
set(gca,'fontsize',20); set(h, 'linewidth', 2);