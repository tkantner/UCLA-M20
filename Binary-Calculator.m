%Binary Calculator- Takes in two decimal numbers
%and outputs the answer in binary and decimal

%Clear the workspace
clear all;
clc;

%Prompt for A
a = input('Please enter A as a decimal: ');

%Check A's validity
if mod(a, floor(a)) ~= 0
    error('A is not an integer');
end

if a > 7 || a < 0
    error('A is not in the specified range');
end

%Prompt for B
b = input('Please enter B as a decimal: ');

%Check B's validity
if mod(b, floor(b)) ~= 0
    error('B is not an integer');
end

if b > 7 || b < 0
    error('B is not in the specified range');
end

%Convert to binary
c = a;
for count = 0:+1:2
    
    if count == 0
        a0 = mod(a,2);
    elseif count == 1
        a1 = mod(a,2);
    elseif count == 2
        a2 = mod(a,2);
    end
    
    a = floor(a/2);
end

d = b;
for count = 0:+1:2
    
    if count == 0
        b0 = mod(b,2);
    elseif count == 1
        b1 = mod(b,2);
    elseif count == 2
        b2 = mod(b,2);
    end
    
    b = floor(b/2);
end

%Sum them up
s0 = xor(xor(a0, b0), 0);
c1 = and(a0, b0) || and(a0,0) || and(b0, 0);
s1 = xor(xor(a1,b1), c1);
c2 = and(a1, b1) || and(a1,c1) || and(b1, c1);
s2 = xor(xor(a2,b2), c2);
c3 = and(a2, b2) || and(a2,c2) || and(b2, c2);


%Print the results
fprintf('\nThe decimals provided are A = %i and B = %i\n', c, d);
fprintf('Conversion of A to binary: %i%i%i\n', a2, a1, a0);
fprintf('Conversion of B to binary: %i%i%i\n', b2, b1, b0);
fprintf('A plus B in binary is: %i%i%i%i\n', c3, s2, s1, s0);
fprintf('A plus B in decimal is: %i\n', c3*8+s2*4+s1*2+s0);
