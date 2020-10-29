function [ output ] = gaussKernel(sig,m)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  gaussKernel():归一化二维高斯滤波核函数
%  sig 对应于高斯函数定义中的σ
%  w 的大小为 m×m 其中m必须为奇数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 if(nargin<2)                      %为给定m值则求取m
     m = ceil(3*sig)*2 + 1;        %求m值
 end
 if(m<ceil(3*sig)*2 + 1)           %判断m值是否太小
    warning('m值太小，请重新输入...') 
    return                         %m值太小则终止程序
 end
 if(rem(m,2)==0)                   %判断m值是否为偶数
    warning('m值不能为偶数，请重新输入...') 
    return                         %m值为偶数则终止程序
 end
 output = zeros(m,m);
for i = 1:m
    for j = 1:m
        %%%  循环操作，依次计算卷积核每一个值   %%%
        output(i,j) = 1/(2*pi*sig^2)*exp(-(  (i-(m+1)/2)^2+(j-(m+1)/2)^2  )/2/sig/sig);
    end
end
%%%%%%   归一化处理    %%%%%%
sumall = sum(sum(output,2),1);
output = output/sumall;
end

