function a = SAS(b,c,alpha)
% finding the third edge
    a2 = b*b+c*c-2*b*c*cos(alpha);
    a = sqrt(a2);
end