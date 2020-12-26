global options
addpath Netlab
load data1
Xapp=X(1:2:end);
Yapp=Yb(1:2:end);
Xtest=X(2:2:end);
Ytest=Yb(2:2:end);
Net = glm(size(Xapp,2),size(Yapp,2),'linear');
options = foptions;
options(1) = 1;
options(14) = 100;
options(18) = 0.001;
[Net options errlog] = netopt(Net, options, Xapp, Yapp, 'graddesc');
figure
plot(errlog)
Yc=glmfwd(Net,X);
figure
plot(X,Y,'b-',X,Yc,'r-')
legend(': Y',': Yc');
Etest=glmerr(Net,Xtest,Ytest)
