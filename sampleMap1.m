
%function sampleMap1(A,win)
A = audioread('Ring02.wav');
win = 100;
N = round(sqrt(length(A)/win)); % number of framed
st = 1;
for n= 1:N^2
e = Energy(A(st:win+st),win);
x(n) = e;
st = (st+win);   
end
minX = min(x);
maxX = max(x);
subplot(2,2,1);
plot(x);
% map the value
for i=1:N^2
    B(i)=round(x(i)*255/maxX-minX);  %map the range between 0-255
end

R=reshape(B,N,[]); %reshape the value into RCxRC image
R=R/0.7;  % use of division to make contrast
R=imresize(R,[256,256]);
subplot(2,2,2);
imshow(R,'DisplayRange',[0 255]);
colormap(jet(256));
colorbar;

%end



 
