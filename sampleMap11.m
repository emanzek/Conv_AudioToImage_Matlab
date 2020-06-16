
function sampleMap11(A)

RC=floor(sqrt(length(A)));   % get corresponding image size RC*RC
minA=min(min(A));  % find max and min (stereo sound)
maxA=max(max(A));  % to map the value into range 0-255
B=A(1:RC^2);

% map the value
for i=1:RC^2
 B(i)=floor((A(i)-minA)*(255) / (maxA-minA));  %map the range between 0-255
end

R=reshape(B,[RC,RC]); %reshape the value into RCxRC image

R=R/0.7;  % use of division to make contrast

imshow(R,'DisplayRange',[0 255]); % display the image in grayscale

end



 
