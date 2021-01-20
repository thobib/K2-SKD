%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tubes SKD-2021/01/20-FSK	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abda Fauzan 				%
% Ahnaf Permata Wiejaya 	%	
% Alemina Aprilina Br M 	%	
% Jatmiko Wibisono 			%
% Rizky Syafrullah  		%	
% Satrio Utomo				%
% Thobib Khoirul Annas 		%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;	% menghapus data di memori Matlab
clc;	% menghapus layar di command window

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% inisialisasi variabel
b = input('Enter the Bit stream \n '); % inisialisasi b dan nilai
n = length(b);	% panjang variabel b
t = 0:.01:n;	% t panjang 
x = 1:1:(n+1)*100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% perulangan dan percabangan untuk penentuan posisi nilai 0 dan 1
for i = 1:n
  if (b(i) == 0)
    b_p(i) = -1;
  else
    b_p(i) = 1;
  end
  
  for j = i:.1:i+1
    bw(x(i*100:(i+1)*100)) = b_p(i);
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% rumus bw, wo dan W
bw = bw(100:end);
wo = 2*(2*pi*t);
W = 1*(2*pi*t);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% rumus sinHt(high/1) dan sinLT (low/0)
sinHt = sin(wo+W);
sinLt = sin(wo-W);
st = sin(wo+(bw).*W);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% output sinyal
%%%%%%%%%%%%%%%%%%%%%%	output sinyal subplot 1
subplot(4,1,1)
plot(t,bw)
grid on ; axis([0 n -2 +2])
title('Data Inputan(binary)')
%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%	output sinyal subplot 2
subplot(4,1,2)
plot(t,sinHt)
grid on ; axis([0 n -2 +2])
title('Frekuensi Pembawa untuk Data "1" ')
%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%	output sinyal subplot 3
subplot(4,1,3)
plot(t,sinLt)
grid on ; axis([0 n -2 +2])
title('Frekuensi Pembawa untuk Data "0" ')
%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%	output sinyal subplot 5
subplot(4,1,4)
plot(t,st)
grid on ; axis([0 n -2 +2])
title('Sinyal Termodulasi FSK ')
%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fs=1;
% figure %pburg(st,10)
% periodogram(st)