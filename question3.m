%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 调用编写的twodConv() 和 gaussKernel() 函数
% 分别对四幅图像进行σ= 1,2,3,5 高斯滤波
% 并绘制结果
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cameraman = imread('cameraman.tif');                 %读取图片存入指定变量
cameraman1 = twodConv(cameraman,gaussKernel(1));     %对图像进行卷积 σ=1
cameraman2 = twodConv(cameraman,gaussKernel(2));     %对图像进行卷积 σ=2
cameraman3 = twodConv(cameraman,gaussKernel(3));     %对图像进行卷积 σ=3
cameraman5 = twodConv(cameraman,gaussKernel(5));     %对图像进行卷积 σ=5
figure(1)                                            %显示原图
imshow(uint8(cameraman))
title('cameraman.tif 原图')
figure(2)                                            %显示滤波图像
subplot(2,2,1)
imshow(uint8(cameraman1))
title('cameraman.tif 高斯滤波-σ=1')
subplot(2,2,2)
imshow(uint8(cameraman2))
title('cameraman.tif 高斯滤波-σ=2')
subplot(2,2,3)
imshow(uint8(cameraman3))
title('cameraman.tif 高斯滤波-σ=3')
subplot(2,2,4)
imshow(uint8(cameraman5))
title('cameraman.tif 高斯滤波-σ=5')

einstein = imread('einstein.tif');                  %读取图片存入指定变量
einstein1 = twodConv(einstein,gaussKernel(1));      %对图像进行卷积 σ=1
einstein2 = twodConv(einstein,gaussKernel(2));      %对图像进行卷积 σ=2
einstein3 = twodConv(einstein,gaussKernel(3));      %对图像进行卷积 σ=3
einstein5 = twodConv(einstein,gaussKernel(5));      %对图像进行卷积 σ=5
figure(3)                                           %显示原图
imshow(uint8(einstein))
title('einstein.tif 原图')
figure(4)                                           %显示滤波图像
subplot(2,2,1)
imshow(uint8(einstein1))
title('einstein.tif 高斯滤波-σ=1')
subplot(2,2,2)
imshow(uint8(einstein2))
title('einstein.tif 高斯滤波-σ=2')
subplot(2,2,3)
imshow(uint8(einstein3))
title('einstein.tif 高斯滤波-σ=3')
subplot(2,2,4)
imshow(uint8(einstein5))
title('einstein.tif 高斯滤波-σ=5')

mandril_color = imread('mandril_color.tif');          %读取彩色图像
mandril_colorgray = rgb1gray(mandril_color,'NTSC');   %采用‘NTSC’方式灰度化图像
mandril_colorgray1 = twodConv(mandril_colorgray,gaussKernel(1));     %对图像进行卷积 σ=1
mandril_colorgray2 = twodConv(mandril_colorgray,gaussKernel(2));     %对图像进行卷积 σ=2
mandril_colorgray3 = twodConv(mandril_colorgray,gaussKernel(3));     %对图像进行卷积 σ=3
mandril_colorgray5 = twodConv(mandril_colorgray,gaussKernel(5));     %对图像进行卷积 σ=5
figure(5)                                            %显示原图和灰度图
subplot(1,2,1)
imshow(uint8(mandril_color))
title('mandril-color.tif 原图')
subplot(1,2,2)
imshow(uint8(mandril_colorgray))
title('mandril-color.tif 灰度图')
figure(6)                                            %显示滤波图像
subplot(2,2,1)
imshow(uint8(mandril_colorgray1))
title('mandril-color.tif 高斯滤波-σ=1')
subplot(2,2,2)
imshow(uint8(mandril_colorgray2))
title('mandril-color.tif 高斯滤波-σ=2')
subplot(2,2,3)
imshow(uint8(mandril_colorgray3))
title('mandril-color.tif 高斯滤波-σ=3')
subplot(2,2,4)
imshow(uint8(mandril_colorgray5))
title('mandril-color.tif 高斯滤波-σ=5')

lena512color = imread('lena512color.tiff');          %读取彩色图像
lena512colorgray = rgb1gray(lena512color);           %采用‘NTSC’方式灰度化图像，采用’NTSC’为缺省方式
lena512colorgray1 = twodConv(lena512colorgray,gaussKernel(1));     %对图像进行卷积 σ=1
lena512colorgray2 = twodConv(lena512colorgray,gaussKernel(2));     %对图像进行卷积 σ=2
lena512colorgray3 = twodConv(lena512colorgray,gaussKernel(3));     %对图像进行卷积 σ=3
lena512colorgray5 = twodConv(lena512colorgray,gaussKernel(5));     %对图像进行卷积 σ=5
figure(7)                                            %显示原图和灰度图
subplot(1,2,1)
imshow(uint8(lena512color))
title('lena512color.tiff 原图')
subplot(1,2,2)
imshow(uint8(lena512colorgray))
title('lena512color.tiff 灰度图')
figure(8)                                            %显示滤波图像
subplot(2,2,1)
imshow(uint8(lena512colorgray1))
title('lena512color.tiff 高斯滤波-σ=1')
subplot(2,2,2)
imshow(uint8(lena512colorgray2))
title('lena512color.tiff 高斯滤波-σ=2')
subplot(2,2,3)
imshow(uint8(lena512colorgray3))
title('lena512color.tiff 高斯滤波-σ=3')
subplot(2,2,4)
imshow(uint8(lena512colorgray5))
title('lena512color.tiff 高斯滤波-σ=5')
