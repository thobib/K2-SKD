%%%%%%%%%%%%%%%%%%%%%%%%%
%Tubes SKD-2021/01/20-ASK
%%%%%%%%%%%%%%%%%%%%%%%%%
% Abda Fauzan 			%
% Ahnaf Permata Wiejaya %	
% Alemina Aprilina Br M %	
% Jatmiko Wibisono 		%
% Rizky Syafrullah  	%	
% Satrio Utomo			%
% Thobib Khoirul Annas 	%
%%%%%%%%%%%%%%%%%%%%%%%%%


clear;	% menghapus data di memori Matlab
clc;	% menghapus layar di command window

%%%%%%%%%%%%%%%%%%%%%%%%
b = input('Enter the Bit stream \n '); % inisialisasi b dan nilai
n = length(b);	% panjang variabel b
t = 0:.01:n;	% t panjang 
x = 1:1:(n+1)*100;
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
for i = 1:n 			% perulangan i = 1 sampai nilai variabel n
  for j = i:.1:i+1		% perulangan j = 1 sampai nilai variabel n
    bw(x(i*100:(i+1)*100)) = b(i);	%
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
bw = bw(100:end);
sint = sin(2*pi*t);
st = bw.*sint;
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,1)
plot(t,bw)
grid on ; axis([0 n -2 +2])
title('Data Inputan(binary)')
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,2)
plot(t,sint)
grid on ; axis([0 n -2 +2])
title('Sinyal sin(t)')
%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,1,3)
plot(t,st)
grid on ; axis([0 n -2 +2])
title('Sinyal Termodulasi ASK ')
%%%%%%%%%%%%%%%%%%%%%%%%