function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
% A = zeros(n,m)
if nargin==2 
    for i=1:n
       x(i,1) = i;
    end
    for j=1:m
       x(1,j) = j;
    end
    for i=2:n
        for j=2:m
            x(i,j) = x(i,j-1)+x(i-1,j);
        end
    end
    A = x;
else
    error('Wrong inputs')
end

% disp(x);

% Now the real challenge is to fill in the correct values of A


end
% Things beyond here are outside of your function