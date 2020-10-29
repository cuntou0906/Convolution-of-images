%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% conv2() ����������ϵͳ���Դ��������ķ�ͼ����о������ ���Ц�=1
% �Ԧ�=1 �µĽ���������ֵͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%   cameraman.tif ͼ����    %%%%%  
cameraman_std_1 = conv2(cameraman,gaussKernel(1),'same'); 
cameraman_sub_1 = cameraman1 - cameraman_std_1;

%%%%%%   einstein.tif ͼ����    %%%%%  
einstein_std_1 = conv2(einstein,gaussKernel(1),'same');
einstein_sub_1 = einstein1 - einstein_std_1;

%%%%%%   mandril_color.tif ͼ����    %%%%%  
mandril_colorgray_std_1 = conv2(mandril_colorgray,gaussKernel(1),'same');
mandril_colorgray_sub_1 = mandril_colorgray1 -mandril_colorgray_std_1;

%%%%%%   lena512color.tiff ͼ����    %%%%%  
lena512colorgray_std_1 = conv2(lena512colorgray,gaussKernel(1),'same');
lena512colorgray_sub_1 = lena512colorgray1 - lena512colorgray_std_1;

%%%%%%   �����ķ�ͼ���������Ľ��  ���Ц�=1    %%%%% 
figure(9)
subplot(2,2,1)
imshow(uint8(cameraman_std_1))
title('cameraman.tif ��=1 [�Դ�����]')
subplot(2,2,2)
imshow(uint8(einstein_std_1))
title('einstein.tif ��=1 [�Դ�����]')
subplot(2,2,3)
imshow(uint8(mandril_colorgray_std_1))
title('mandril-colorgray.tif ��=1 [�Դ�����]')
subplot(2,2,4)
imshow(uint8(lena512colorgray_std_1))
title('lena512colorgray.tiff ��=1 [�Դ�����]')

%%%%%%   �����ķ�ͼ��Ĳ�ֵ���  ���Ц�=1    %%%%% 
figure(10)
subplot(2,2,1)
imshow(uint8(cameraman_sub_1))
title('cameraman.tif ��ֵͼ��-��=1')
subplot(2,2,2)
imshow(uint8(einstein_sub_1))
title('einstein.tif ��ֵͼ��-��=1')
subplot(2,2,3)
imshow(uint8(mandril_colorgray_sub_1))
title('mandril-colorgray.tif ��ֵͼ��-��=1')
subplot(2,2,4)
imshow(uint8(lena512colorgray_sub_1))
title('lena512colorgray.tiff ��ֵͼ��-��=1')