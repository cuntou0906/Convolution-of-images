function [ output ] = gaussKernel(sig,m)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  gaussKernel():��һ����ά��˹�˲��˺���
%  sig ��Ӧ�ڸ�˹���������еĦ�
%  w �Ĵ�СΪ m��m ����m����Ϊ����
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 if(nargin<2)                      %Ϊ����mֵ����ȡm
     m = ceil(3*sig)*2 + 1;        %��mֵ
 end
 if(m<ceil(3*sig)*2 + 1)           %�ж�mֵ�Ƿ�̫С
    warning('mֵ̫С������������...') 
    return                         %mֵ̫С����ֹ����
 end
 if(rem(m,2)==0)                   %�ж�mֵ�Ƿ�Ϊż��
    warning('mֵ����Ϊż��������������...') 
    return                         %mֵΪż������ֹ����
 end
 output = zeros(m,m);
for i = 1:m
    for j = 1:m
        %%%  ѭ�����������μ�������ÿһ��ֵ   %%%
        output(i,j) = 1/(2*pi*sig^2)*exp(-(  (i-(m+1)/2)^2+(j-(m+1)/2)^2  )/2/sig/sig);
    end
end
%%%%%%   ��һ������    %%%%%%
sumall = sum(sum(output,2),1);
output = output/sumall;
end

