This one does general MATLAB function for integrating experimental data using Simpson’s 1/3 rule. I used function to check k if there are an odd number of intervals, 
if there are, the trapezoidal rule should be used for the last interval. 

* function I = Simpson(x,y)

* Where the function numerically evaluates the integral of the vector of function values y with respect to x.
* Your matlab function also include the following:

*Error check that the inputs are the same length.

*Error check that the x input is equally spaced.

*Warn the user (not an error, just a warning) if the trapezoidal rule has to be used on the last interval.
