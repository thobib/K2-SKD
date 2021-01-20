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
b = input('Enter the Bit stream \n '); %b = [0 1 0 1 1 1 0];
n = length(b);	% panjang nilai b
t = 0:.01:n;	% panjang rentang plot nilai t
x = 1:1:(n+1)*100;	% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% buat nilai bit diplot
for i = 1:n 	% perulangan nested bersarang
    if (b(i) == 0)		% percabangan nilai b jika = 0
    	b_p(i) = -1;	% nilai nya -1
    else
        b_p(i) = 1;  % pilihan else 1
    end
    
	for j = i:.1:i+1	% perulangan nilai i dengan inkremenn .1 (satu) dengan batas akhir inkremen+1 (i)
    	bw(x(i*100:(i+1)*100)) = b_p(i);	% hasil nilai bw(x) = b_p(i)
	end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bw = bw(100:end);
sint = sin(2*pi*t); % frek. carrier
st = bw.*sint;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% output sinyal subplot 1
subplot(3,1,1)
plot(t,bw)
grid on ; axis([0 n -2 +2])   % batas plot kartesius
title('Data Inputtan(binary)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% output sinyal subplot 2
subplot(3,1,2)
plot(t,sint)
grid on ; axis([0 n -2 +2])   % batas plot kartesius
title('Frekuensi Pemodulasi')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% output sinyal subplot 3
subplot(3,1,3)
plot(t,st)
grid on ; axis([0 n -2 +2])   % batas plot kartesius
title('Frekuensi Termodulasi (PSK)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%