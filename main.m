delta_r = 0.0002; %height/layers
delta_y = 0.0002; %width/rows
layers = 20;
rows = 20;
r = 0.05;
d = 0.075;
I = 1;

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
