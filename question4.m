%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% conv2() 函数：利用系统的自带函数对四幅图像进行卷积操作 其中σ=1
% 对σ=1 下的结果，计算差值图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%   cameraman.tif 图像处理    %%%%%  
cameraman_std_1 = conv2(cameraman,gaussKernel(1),'same'); 
cameraman_sub_1 = cameraman1 - cameraman_std_1;

%%%%%%   einstein.tif 图像处理    %%%%%  
einstein_std_1 = conv2(einstein,gaussKernel(1),'same');
einstein_sub_1 = einstein1 - einstein_std_1;

%%%%%%   mandril_color.tif 图像处理    %%%%%  
mandril_colorgray_std_1 = conv2(mandril_colorgray,gaussKernel(1),'same');
mandril_colorgray_sub_1 = mandril_colorgray1 -mandril_colorgray_std_1;

%%%%%%   lena512color.tiff 图像处理    %%%%%  
lena512colorgray_std_1 = conv2(lena512colorgray,gaussKernel(1),'same');
lena512colorgray_sub_1 = lena512colorgray1 - lena512colorgray_std_1;

%%%%%%   绘制四幅图像卷积操作的结果  其中σ=1    %%%%% 
figure(9)
subplot(2,2,1)
imshow(uint8(cameraman_std_1))
title('cameraman.tif σ=1 [自带函数]')
subplot(2,2,2)
imshow(uint8(einstein_std_1))
title('einstein.tif σ=1 [自带函数]')
subplot(2,2,3)
imshow(uint8(mandril_colorgray_std_1))
title('mandril-colorgray.tif σ=1 [自带函数]')
subplot(2,2,4)
imshow(uint8(lena512colorgray_std_1))
title('lena512colorgray.tiff σ=1 [自带函数]')

%%%%%%   绘制四幅图像的差值结果  其中σ=1    %%%%% 
figure(10)
subplot(2,2,1)
imshow(uint8(cameraman_sub_1))
title('cameraman.tif 差值图像-σ=1')
subplot(2,2,2)
imshow(uint8(einstein_sub_1))
title('einstein.tif 差值图像-σ=1')
subplot(2,2,3)
imshow(uint8(mandril_colorgray_sub_1))
title('mandril-colorgray.tif 差值图像-σ=1')
subplot(2,2,4)
imshow(uint8(lena512colorgray_sub_1))
title('lena512colorgray.tiff 差值图像-σ=1')