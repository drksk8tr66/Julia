# Julia
Julia code for integer factorization

Most of the code in this repo will be dedicated to factorizing large numbers
Current variations of code in here are split into 2 main categories.

1. UpperLimit - 
  UpperLimit types work based off of trial division from 1 to n to lower the upper limit.
  This has been changed to only check +-1 of each multiple of 6.
  The Sieve Theory states that each Prime number can be found adjacent to a multiple of 6.
  This works off of the logic that if a number will not divide by x then we can exclude all numbers (n/x : n/(x-1))
  Note: has dimishing returns

2. Gambler - 
  Gambler types work off of randomly picking a number and seeing if it divides evenly into n
  Numbers are between the highest checked number in the UpperLimit(a) to the upper limit itself (n/a)
  Seeds in julia are unable to randomly pick very large numbers.
  We start by randomly selecting a number of digits to use betwen length(a) and length(n)
  We then loop through each digits and randomly select a value for that digit (0:9)
  
  
The UpperLimits currently write down the last number checked every ten-million checks.
The Gamblers have yet to be modified to pull in a new lower limit from the UpperLimit files and need to be modified manually.

We now have the Pascal.jl code which accepts an integer argument and returns if that number is Prime or Composite.
This works on Pascal's Triangle and the AKS Primality test.
This states that if each coefficient of the polynomial (or the Pth row of Pascal's Triangle) are divisible by the possible Prime P, then P is a Prime number.

  
