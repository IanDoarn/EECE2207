function [ finBal, intEarned ] =  balWithInt(initBalance, rate)
% Author: Ian Doarn
% Date: 9-14-2017
% calculates the interest earned and final balance of an investment after one investment period
% parameter initBalance: principle
% parameter rate: rate per period
% return finBal: Final balance of the investment (Compound interest)
% return intEarned: Interest earned on the initial balance

P = initBalance;
r = rate;

intEarned = P * ((1 + r)^1 - 1);
finBal = initBalance + intEarned;

end
