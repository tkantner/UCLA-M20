%Cubic function classifier- takes the coefficients of a 
%cubic function and determines the behavior

%Clear the screen
clear all;
clc;

%Prompt for input
a = input('What is the value of a? ');
b = input('What is the value of b? ');
c = input('What is the value of c? ');
d = input('What is the value of d? ');


%Find the two roots of the derivative
r1 = (-2*b + sqrt(4*b^2-4*3*a*c))/(6*a);
r2 = (-2*b - sqrt(4*b^2-4*3*a*c))/(6*a);

%Print the values of the coefficients
fprintf('a = %10.6f\n', a);
fprintf('b = %10.6f\n', b);
fprintf('c = %10.6f\n', c);
fprintf('d = %10.6f\n', d);

%See if the roots are real
if isreal(r1) == 1 && isreal(r2) == 1
    fprintf('r1 = %10.6f\n', r1);
    fprintf('q(r1) = %10.6f\n', a*r1^3+b*r1^2+c*r1+d);
    fprintf('r2 = %10.6f\n', r2);
    fprintf('q(r2) = %10.6f\n', a*r2^3+b*r2^2+c*r2+d);
    if (a*r1^3+b*r1^2+c*r1+d)*(a*r2^3+b*r2^2+c*r2+d) < 0
        fprintf('Function q is simple.\n');
    else
        fprintf('Function q is NOT simple.\n');
    end
else
    fprintf('Monotone\n');
end
