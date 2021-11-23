% function that can calculate the result of polynomial that defined early
% input of the function is integer number ranging from min to max boundary
% number
% the output is value of the polynomial of each input number and line
% diagram that connect each point in x-y axis

function Calc_myPoly
       inp = input('Insert lower boundary number = ');
       out = input('Insert upper boundary number = ');
x = [inp : out]
value = [];
for i = 1 : length(x)
value(i) = x(i)^2-2*x(i)+5;
fprintf ('f(%d) = %d\n',x(i),value(i))
end
plot (x,value,'r-');
axis ([0 11 0 100]);
end