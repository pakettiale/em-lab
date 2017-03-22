

layers = 20; %number of wire layers in coil
rows = 20; %number of wires in one row

delta_r = 0.0002; %height of loop cross section/layers
delta_y = 0.0002; %width of coil/rows

r = 0.05; %inner radius of the coil
d = 0.075; %distance between the two coils
I = 1; %current that flows through the coil

y_vec = -1:0.01:1;
H_tot = [];
out = zeros(layers, rows);
for y = y_vec
for n = 1:layers
    for m = 1:rows
        out(n,m) = H(r + delta_r*n, y + m*delta_y, I) + H(r + delta_r*n, d - y + m*delta_y, I);
    end
end

H_tot(end + 1) = sum(sum(out));

end

plot(y_vec,H_tot)
