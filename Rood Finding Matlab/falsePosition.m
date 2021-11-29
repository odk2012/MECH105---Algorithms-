function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

if nargin<3, error('at least 3 input arguments required'), end 
test = func(xl,varargin{:}) * func(xu,varargin{:});
if nargin<4||isempty(es), es = 0.0001; end
if nargin<5||isempty(maxit), maxit = 200; end
iter = 0; xr = xl; ea = 100;
while(1) 
    xrold = xr; 
    xr = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu)) 
    if (xr ~= 0), ea = abs((xr - xrold)/xr) * 100; 
    end 
    test = func(xl,varargin{:}) * func(xu,varargin{:});
    if test < 0 
        xu = xr; 
    elseif test > 0 
        xl = xr; 
    else 
        ea = 0;
    end 
    if (ea <= es)
        (iter >= maxit)
        break
    end
    iter = iter + 1;
end 
root = xr; fx = func(xr, varargin{:});
end