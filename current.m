function out = current(y)
yend = 0.13;
ystart = -0.06;
Iend = 1.78;
Istart = 1.82;


out = Istart - ystart*(Iend - Istart)/(yend - ystart) + (Iend - Istart)/(yend - ystart)*y;