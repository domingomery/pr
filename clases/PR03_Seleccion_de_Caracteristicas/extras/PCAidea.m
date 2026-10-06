N = 1000;
x = randn(N,1);   x = x-mean(x);
a = 0.7;
y = a*x+(1-a)*randn(N,1);   y = y-mean(y);
figure(1);plot(x,y,'b.');axis([-3 3 -3 3]);grid on;xlabel('x');ylabel('y')

varx = x'*x/(N-1)
vary = y'*y/(N-1)
varxy = x'*y/(N-1)
X = [x y];
Cx = cov(X)
A = eigsort(Cx);
Y = X*A;
xp = Y(:,1);
yp = Y(:,2);

figure(2);plot(xp,yp,'r.');axis([-3 3 -3 3]);grid on;;xlabel('xp');ylabel('yp')
varxp = xp'*xp/(N-1)
varyp = yp'*yp/(N-1)
varxyp = xp'*yp/(N-1)
Cy = cov(Y)
[Cx Cy]
