function N = logistic01(a,tdata)
N = a(1)./(1+(a(1)/a(3)-1)*exp(-a(2)*(tdata-1980)));
end

