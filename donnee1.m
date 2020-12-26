X=4*(rand(200,1)-0.5)
X=sort(X)
Y=2*X+3;
Yb=Y+0.5*randn(size(Y,1),1);
figure
plot(X,Y,'b-',X,Yb,'c.')
save data1 X Y Yb
