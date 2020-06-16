
%sample call

subplot(3,2,1);
A = audioread('Ding.wav'); % get the sound 1
plot(A);
subplot(3,2,2);
%sampleMap11(A);
%subplot(3,3,3);
sampleMap1(A,100);  

subplot(3,2,3);
A = audioread('testSong4.flac'); % get the sound 2
plot(A);
subplot(3,2,4);
%sampleMap11(A);
%subplot(3,3,6);
sampleMap1(A,100);  


subplot(3,2,5);
A = audioread('Windows Battery Critical.wav'); % get the sound 3
plot(A);
subplot(3,2,6);
%sampleMap11(A);
%subplot(3,3,9);
sampleMap1(A,100); 

