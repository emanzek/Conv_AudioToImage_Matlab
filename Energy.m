function [ E ] = Energy( Y,P )
%  This function calculate the energy of given speech frame
%  Y is the signal to be calculated
%  P is the windows size
 
E = sum(abs(Y(1:P)));
 
end
