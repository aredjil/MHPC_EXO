## This script plots a family of 5 parabolas 
reset 

TITLE= "Plot of 5 parabolas"

XLABEL="x"

YLABEL="y"
LABELS ="1 2 3"

## Defining the parabola function 
f(x, a, b, c)= a * x **2 + b * x + c 

b=3
c=1
## Settings of the plot 
set terminal png 
set output "fig.png"
set sample 100
set title TITLE
set xlabel XLABEL  
set ylabel YLABEL
set grid 
set key right box 
set margin 5 
## Plotting the graph 
plot for [a=1:5] a * x **2 + b * x + c 




