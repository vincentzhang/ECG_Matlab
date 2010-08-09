%This is to calculate the cm value for every 2500 points

%rddata;
%data01 = pre_opera(M_ADC(:,1));% channel 1
%data01=pre_opera(M(:,1)');% channel 1
clear;clc;

saveVT;
saveVF;


for i=1:1:20
VT = importdata(sprintf('VT%d',i));
VF = importdata(sprintf('VF%d',i));
end

fprintf(1,'\\n$> THE VT and VF DATA are READ\n');

load VT1.txt;
load VT2.txt;
load VT3.txt;
load VT4.txt;

VT_1=[];
VT_1=[VT_1;pre_opera(VT1)];
cmValue=cm(VT_1');
fprintf(1,'THE CMVALUE FOR VT1.TXT IS %d\n',cmValue);
VT_2=[];
VT_2=[VT_2;pre_opera(VT2)];
cmValue=cm(VT_2');
fprintf(1,'THE CMVALUE FOR VT2.TXT IS %d\n',cmValue);
VT_3=pre_opera(VT3);
cmValue=cm(VT_3');
fprintf(1,'THE CMVALUE FOR VT3.TXT IS %d\n',cmValue);
VT_4=pre_opera(VT4);
cmValue=cm(VT_4');
fprintf(1,'THE CMVALUE FOR VT4.TXT IS %d\n',cmValue);

% for i=1:1:20
%     cmValue(i)=cm(VT_1(((i-1)*1400+1):i*1400));
% end
