function out = current(y)
yend = 0.13;
ystart = -0.06;
Iend = 1.8;
Istart = 1.85;


out = 1.834 + (Iend - Istart)/(yend - ystart)*y;