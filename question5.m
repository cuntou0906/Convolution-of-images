%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 调用编写的twodConv() 和 gaussKernel() 函数
% 分别对四幅图像采用'replicate'和'zero'两种方式进行σ= 1高斯滤波
% 并绘制结果
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cameraman = imread('cameraman.tif');                                       %读取图片存入指定变量
cameraman1_zero = twodConv(cameraman,gaussKernel(1),'zero');               %对图像进行卷积 采用'zero'方式
cameraman1_replicate = twodConv(cameraman,gaussKernel(1),'replicate');     %对图像进行卷积 采用'zero'方式
cameraman1_optsub = cameraman1_zero - cameraman1_replicate;                %计算差值图像
figure(11)                                                                 %显示原图
subplot(2,2,1)
imshow(uint8(cameraman))
title('cameraman.tif 原图')                                                %显示滤波图像
subplot(2,2,2)
imshow(uint8(cameraman1_zero))
title('cameraman.tif "zero"方式-σ=1')
subplot(2,2,3)
imshow(uint8(cameraman1_replicate))
title('cameraman.tif "replicate"方式-σ=1')
subplot(2,2,4)
imshow(uint8(cameraman1_optsub))                                           %显示差值图像
title('cameraman.tif 差值图像-σ=1') 

einstein = imread('einstein.tif');                                         %读取图片存入指定变量
einstein1_zero = twodConv(einstein,gaussKernel(1),'zero');                 %对图像进行卷积 采用'zero'方式
einstein1_replicate = twodConv(einstein,gaussKernel(1),'replicate');       %对图像进行卷积 采用'zero'方式
einstein1_optsub = einstein1_zero - einstein1_replicate;                   %计算差值图像
figure(12)                                                                 %显示原图
subplot(2,2,1)
imshow(uint8(einstein))
title('einstein.tif 原图')                                                 %显示滤波图像
subplot(2,2,2)
imshow(uint8(einstein1_zero))
title('einstein.tif "zero"方式-σ=1')
subplot(2,2,3)
imshow(uint8(einstein1_replicate))
title('einstein.tif "replicate"方式-σ=1')
subplot(2,2,4)
imshow(uint8(einstein1_optsub))                                            %显示差值图像
title('einstein.tif 差值图像-σ=1') 

mandril_color = imread('mandril_color.tif');                               %读取彩色图像
mandril_colorgray = rgb1gray(mandril_color,'NTSC');                        %采用‘NTSC’方式灰度化图像
mandril_colorgray1_zero = twodConv(mandril_colorgray,gaussKernel(1),'zero');              %对图像进行卷积 采用'zero'方式
mandril_colorgray1_replicate = twodConv(mandril_colorgray,gaussKernel(1),'replicate');    %对图像进行卷积 采用'zero'方式
mandril_colorgray1_optsub = mandril_colorgray1_zero - mandril_colorgray1_replicate;       %计算差值图像
figure(13)                                                                 %显示灰度图
subplot(2,2,1)
imshow(uint8(mandril_colorgray))
title('mandril-color.tif 灰度图')
subplot(2,2,2)                                                             %显示滤波图像
imshow(uint8(mandril_colorgray1_zero))
title('mandril-color.tif "zero"方式-σ=1')
subplot(2,2,3)
imshow(uint8(mandril_colorgray1_replicate))
title('mandril-color.tif "replicate"方式-σ=1')
subplot(2,2,4)
imshow(uint8(mandril_colorgray1_optsub))                                   %显示差值图像
title('mandril-color.tif 差值图像-σ=1') 

lena512color = imread('lena512color.tiff');                                %读取彩色图像
lena512colorgray = rgb1gray(lena512color);                                 %采用‘NTSC’方式灰度化图像，采用’NTSC’为缺省方式
lena512colorgray1_zero = twodConv(lena512colorgray,gaussKernel(1),'zero');             %对图像进行卷积 采用'zero'方式
lena512colorgray1_replicate = twodConv(lena512colorgray,gaussKernel(1),'replicate');   %对图像进行卷积 采用'zero'方式
lena512colorgray1_optsub = lena512colorgray1_zero - lena512colorgray1_replicate;       %计算差值图像
figure(14)                                                                 %显示灰度图
subplot(2,2,1)
imshow(uint8(lena512colorgray))
title('lena512color.tif 灰度图')
subplot(2,2,2)                                                             %显示滤波图像
imshow(uint8(lena512colorgray1_zero))
title('lena512color.tif "zero"方式-σ=1')
subplot(2,2,3)
imshow(uint8(lena512colorgray1_replicate))
title('lena512color.tif "replicate"方式-σ=1')
subplot(2,2,4)
imshow(uint8(lena512colorgray1_optsub))                                    %显示差值图像
title('lena512color.tif 差值图像-σ=1') 