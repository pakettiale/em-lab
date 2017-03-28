
main;

close all
figure
hold on
line([0 0], [0 max(H_tot)])
line([d d], [0 max(H_tot)])
plot(y_vec,H_tot)
axis tight

mag = 10^-3 * [2.95,3.65,4.47,5.38,6.32,7.16,7.84,8.23,8.35,8.37,8.31,8.19,7.9,7.33,6.55,5.67,4.72,3.8,3.04,2.38];
error = 10^-3 * 0.03 * ones(size(mag));
errorz = 0.001 * 0.5 * ones(size(mag));
z = 0.01*((48:67)-54.2 + 0.2);

errorbar(z,mag,error,-error,errorz,-errorz,'rx')

mag2= 10^-3 * [2.9 ,3.6 ,4.4 ,5.3 ,6.3 ,7.2 ,7.9 ,8.5 ,8.5 ,8.5 ,8.45 ,8.2 ,7.9 ,7.2 ,6.4 ,5.45 ,4.5 ,3.66 ,2.9];
error2 = 10^-3 * 0.03 * ones(size(mag2));
errorz2 = 0.01 * 0.5 * ones(size(mag2));
z2 = 0.01*((48:66)-54.2 + 0.2);

text(0.002,0.003,'Coil 1')
text(d + 0.002,0.003,'Coil 2')

%plot(z2,mag2)
