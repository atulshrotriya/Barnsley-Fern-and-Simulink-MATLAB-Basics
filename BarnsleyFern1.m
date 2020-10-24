function hw1q5
x=[0;0];
A=[0.7873 -0.3230;0.3230 0.7873];
B=[0.0841 -0.3286;0.2930 0.0895];
C=[-0.2458 0.1523;0.1722 0.3358];
b1=[0;1.6];
b2=[0;0.44];
p=[0.8 0.9 1.0];
i=0;
set(gca,'color',[0 0 0])
plot(x(1),x(2),'g.','markersize',1)
hold on
while i<100001
    r=rand;
    if r < p(1)
        x=((A*x)+b1);
    elseif r < p(2)
        x=((B*x)+b1);
    else
        x=((C*x)+b2);
    end
    J=x(1,1);
    K=x(2,1);
    set(gca,'color',[0 0 0])
    plot(J,K,'g.','markersize',1)
    i=i+1;
end
end