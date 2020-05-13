function [R]=value2rank(Z);% values2rank               - transform a matrix of values into a matrix of rank (Jan 1,2001)%% Transform the raw values for a set of variables into a set of% relative ranking values. The values are ranked in ascending% order. For example, transforming the values into ranks using% this function and then computing the correlation matrix from% these ranks using corrcoef.m provides the same result as when% using the spearman.m function.%% SYNTAX :%% [R]=value2rank(Z);%% INPUT :%% Z    n by nv    matrix of values for the different variables, where%                 each column corresponds to the values of one variable.%% OUTPUT :%% R    n by nv    matrix giving the ranks for the values in Z. Ranks are%                 computed separetely for each one of the column in Z. [m,n]=size(Z);R=zeros(m,n);for i=1:n,  [sx,rx]=sort(Z(:,i));  [k,rank]=sort(rx);  R(:,i)=rank;end;