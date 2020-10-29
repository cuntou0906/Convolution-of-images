%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ���ñ�д��twodConv() �� gaussKernel() ����
% �ֱ���ķ�ͼ����Ц�= 1,2,3,5 ��˹�˲�
% �����ƽ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cameraman = imread('cameraman.tif');                 %��ȡͼƬ����ָ������
cameraman1 = twodConv(cameraman,gaussKernel(1));     %��ͼ����о�� ��=1
cameraman2 = twodConv(cameraman,gaussKernel(2));     %��ͼ����о�� ��=2
cameraman3 = twodConv(cameraman,gaussKernel(3));     %��ͼ����о�� ��=3
cameraman5 = twodConv(cameraman,gaussKernel(5));     %��ͼ����о�� ��=5
figure(1)                                            %��ʾԭͼ
imshow(uint8(cameraman))
title('cameraman.tif ԭͼ')
figure(2)                                            %��ʾ�˲�ͼ��
subplot(2,2,1)
imshow(uint8(cameraman1))
title('cameraman.tif ��˹�˲�-��=1')
subplot(2,2,2)
imshow(uint8(cameraman2))
title('cameraman.tif ��˹�˲�-��=2')
subplot(2,2,3)
imshow(uint8(cameraman3))
title('cameraman.tif ��˹�˲�-��=3')
subplot(2,2,4)
imshow(uint8(cameraman5))
title('cameraman.tif ��˹�˲�-��=5')

einstein = imread('einstein.tif');                  %��ȡͼƬ����ָ������
einstein1 = twodConv(einstein,gaussKernel(1));      %��ͼ����о�� ��=1
einstein2 = twodConv(einstein,gaussKernel(2));      %��ͼ����о�� ��=2
einstein3 = twodConv(einstein,gaussKernel(3));      %��ͼ����о�� ��=3
einstein5 = twodConv(einstein,gaussKernel(5));      %��ͼ����о�� ��=5
figure(3)                                           %��ʾԭͼ
imshow(uint8(einstein))
title('einstein.tif ԭͼ')
figure(4)                                           %��ʾ�˲�ͼ��
subplot(2,2,1)
imshow(uint8(einstein1))
title('einstein.tif ��˹�˲�-��=1')
subplot(2,2,2)
imshow(uint8(einstein2))
title('einstein.tif ��˹�˲�-��=2')
subplot(2,2,3)
imshow(uint8(einstein3))
title('einstein.tif ��˹�˲�-��=3')
subplot(2,2,4)
imshow(uint8(einstein5))
title('einstein.tif ��˹�˲�-��=5')

mandril_color = imread('mandril_color.tif');          %��ȡ��ɫͼ��
mandril_colorgray = rgb1gray(mandril_color,'NTSC');   %���á�NTSC����ʽ�ҶȻ�ͼ��
mandril_colorgray1 = twodConv(mandril_colorgray,gaussKernel(1));     %��ͼ����о�� ��=1
mandril_colorgray2 = twodConv(mandril_colorgray,gaussKernel(2));     %��ͼ����о�� ��=2
mandril_colorgray3 = twodConv(mandril_colorgray,gaussKernel(3));     %��ͼ����о�� ��=3
mandril_colorgray5 = twodConv(mandril_colorgray,gaussKernel(5));     %��ͼ����о�� ��=5
figure(5)                                            %��ʾԭͼ�ͻҶ�ͼ
subplot(1,2,1)
imshow(uint8(mandril_color))
title('mandril-color.tif ԭͼ')
subplot(1,2,2)
imshow(uint8(mandril_colorgray))
title('mandril-color.tif �Ҷ�ͼ')
figure(6)                                            %��ʾ�˲�ͼ��
subplot(2,2,1)
imshow(uint8(mandril_colorgray1))
title('mandril-color.tif ��˹�˲�-��=1')
subplot(2,2,2)
imshow(uint8(mandril_colorgray2))
title('mandril-color.tif ��˹�˲�-��=2')
subplot(2,2,3)
imshow(uint8(mandril_colorgray3))
title('mandril-color.tif ��˹�˲�-��=3')
subplot(2,2,4)
imshow(uint8(mandril_colorgray5))
title('mandril-color.tif ��˹�˲�-��=5')

lena512color = imread('lena512color.tiff');          %��ȡ��ɫͼ��
lena512colorgray = rgb1gray(lena512color);           %���á�NTSC����ʽ�ҶȻ�ͼ�񣬲��á�NTSC��Ϊȱʡ��ʽ
lena512colorgray1 = twodConv(lena512colorgray,gaussKernel(1));     %��ͼ����о�� ��=1
lena512colorgray2 = twodConv(lena512colorgray,gaussKernel(2));     %��ͼ����о�� ��=2
lena512colorgray3 = twodConv(lena512colorgray,gaussKernel(3));     %��ͼ����о�� ��=3
lena512colorgray5 = twodConv(lena512colorgray,gaussKernel(5));     %��ͼ����о�� ��=5
figure(7)                                            %��ʾԭͼ�ͻҶ�ͼ
subplot(1,2,1)
imshow(uint8(lena512color))
title('lena512color.tiff ԭͼ')
subplot(1,2,2)
imshow(uint8(lena512colorgray))
title('lena512color.tiff �Ҷ�ͼ')
figure(8)                                            %��ʾ�˲�ͼ��
subplot(2,2,1)
imshow(uint8(lena512colorgray1))
title('lena512color.tiff ��˹�˲�-��=1')
subplot(2,2,2)
imshow(uint8(lena512colorgray2))
title('lena512color.tiff ��˹�˲�-��=2')
subplot(2,2,3)
imshow(uint8(lena512colorgray3))
title('lena512color.tiff ��˹�˲�-��=3')
subplot(2,2,4)
imshow(uint8(lena512colorgray5))
title('lena512color.tiff ��˹�˲�-��=5')
