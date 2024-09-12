reset 

f(x, y, c) = c*sin(x+y)/(x+y)

set xlabel "x"
set ylabel "y"
set zlabel "z"
set isosample 100



splot for [i=1:3] f(x, y, i)
