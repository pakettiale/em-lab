

layers = 14; %number of wire layers in coil
rows = 23; %number of wires in one row
height = 0.0093;
width = 0.0176;
delta_r = height / layers; %height of loop cross section/layers
delta_y = width / rows; %width of coil/rows

r = 0.125/2; %inner radius of the coil
d =1*r; %distance between the two coils
I = 1.85; %current that flows through the coil

y_vec = -0.02:(d/100):d+0.02;
H_tot = [];
out = zeros(layers, rows);
for y = y_vec
    for n = 1:layers
        for m = 1:rows
            %out(n,m) = H(r + delta_r*n, y, I) + H(r + delta_r*n, d - y, I);
            %out(n,m) = H(r + delta_r*n, y - m*delta_y, I) + H(r + delta_r*n, d - y + m*delta_y, I);
            out(n,m) = H(r , y , I) + H(r , d - y, I);
        end
    end

H_tot(end + 1) = sum(sum(out))*4*pi*10^-7;

end
close all
figure
hold on
line([0 0], [0 max(H_tot)])
line([d d], [0 max(H_tot)])
plot(y_vec,H_tot)
axis tight
