function a = SAS(b,c,alpha)
    a2 = b*b+c*c-2*b*c*cos(alpha);
    a = sqrt(a2);
end