function [alpha,beta] = angleupdate(gamma, a,b)
    c = SAS(a,b,gamma);
    alpha = SSS(a,b,c);
    beta = SSS(b,a,c);
end