function hw1q1
udran=rand(1000,1);
mean1=mean(udran)
var1=var(udran)
figure(1)
plot([0:1:999],udran,'.')

ndran=normrnd(0,1,1,1000);
mean2=mean(ndran)
var2=var(ndran)
figure(2)
plot([0:1:999],ndran,'.')
end