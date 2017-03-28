function out = current(y)
yend = 0.13;
ystart = -0.06;
Iend = 1.8;
Istart = 1.8;


out = Istart - ystart*(Iend - Istart)/(yend - ystart) + (Iend - Istart)/(yend - ystart)*y;