function hw1q5a
shg
clf reset
set(gcf,'color','white','menubar','none', ...
'numbertitle','off','name','Fractal Fern')
x = [0; 0];
h = plot(x(1),x(2),'.');
darkgreen = [0 2/3 0];
set(h,'markersize',1,'color',darkgreen,'erasemode','none');
axis([-3 3 0 10])
axis off
stop = uicontrol('style','toggle','string','stop', 'background','white');
drawnow
p = [ .8 .9 1.00];
A1 = [0.7873 -0.3230;0.3230 0.7873];
A2 = [0.0841 -0.3286;0.2930 0.0895];
A3 = [-0.2458 0.1523;0.1722 0.3358];
b1=[0;1.6];
b2=[0;1.6];
b3=[0;0.44];
cnt = 1;
tic
while ~get(stop,'value')
r = rand;
if r < p(1)
x = A1*x + b1;
elseif r < p(2)
x = A2*x + b2;
else r < p(3);
x = A3*x + b3;
end
set(h,'xdata',x(1),'ydata',x(2));
cnt = cnt + 1;
drawnow
end
t = toc;
s = sprintf('%8.0f points in %6.3f seconds',cnt,t);
text(-1.5,-0.5,s,'fontweight','bold');
set(stop,'style','pushbutton','string','close', 'callback','close(gcf)')
end