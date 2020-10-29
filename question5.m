%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ���ñ�д��twodConv() �� gaussKernel() ����
% �ֱ���ķ�ͼ�����'replicate'��'zero'���ַ�ʽ���Ц�= 1��˹�˲�
% �����ƽ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cameraman = imread('cameraman.tif');                                       %��ȡͼƬ����ָ������
cameraman1_zero = twodConv(cameraman,gaussKernel(1),'zero');               %��ͼ����о�� ����'zero'��ʽ
cameraman1_replicate = twodConv(cameraman,gaussKernel(1),'replicate');     %��ͼ����о�� ����'zero'��ʽ
cameraman1_optsub = cameraman1_zero - cameraman1_replicate;                %�����ֵͼ��
figure(11)                                                                 %��ʾԭͼ
subplot(2,2,1)
imshow(uint8(cameraman))
title('cameraman.tif ԭͼ')                                                %��ʾ�˲�ͼ��
subplot(2,2,2)
imshow(uint8(cameraman1_zero))
title('cameraman.tif "zero"��ʽ-��=1')
subplot(2,2,3)
imshow(uint8(cameraman1_replicate))
title('cameraman.tif "replicate"��ʽ-��=1')
subplot(2,2,4)
imshow(uint8(cameraman1_optsub))                                           %��ʾ��ֵͼ��
title('cameraman.tif ��ֵͼ��-��=1') 

einstein = imread('einstein.tif');                                         %��ȡͼƬ����ָ������
einstein1_zero = twodConv(einstein,gaussKernel(1),'zero');                 %��ͼ����о�� ����'zero'��ʽ
einstein1_replicate = twodConv(einstein,gaussKernel(1),'replicate');       %��ͼ����о�� ����'zero'��ʽ
einstein1_optsub = einstein1_zero - einstein1_replicate;                   %�����ֵͼ��
figure(12)                                                                 %��ʾԭͼ
subplot(2,2,1)
imshow(uint8(einstein))
title('einstein.tif ԭͼ')                                                 %��ʾ�˲�ͼ��
subplot(2,2,2)
imshow(uint8(einstein1_zero))
title('einstein.tif "zero"��ʽ-��=1')
subplot(2,2,3)
imshow(uint8(einstein1_replicate))
title('einstein.tif "replicate"��ʽ-��=1')
subplot(2,2,4)
imshow(uint8(einstein1_optsub))                                            %��ʾ��ֵͼ��
title('einstein.tif ��ֵͼ��-��=1') 

mandril_color = imread('mandril_color.tif');                               %��ȡ��ɫͼ��
mandril_colorgray = rgb1gray(mandril_color,'NTSC');                        %���á�NTSC����ʽ�ҶȻ�ͼ��
mandril_colorgray1_zero = twodConv(mandril_colorgray,gaussKernel(1),'zero');              %��ͼ����о�� ����'zero'��ʽ
mandril_colorgray1_replicate = twodConv(mandril_colorgray,gaussKernel(1),'replicate');    %��ͼ����о�� ����'zero'��ʽ
mandril_colorgray1_optsub = mandril_colorgray1_zero - mandril_colorgray1_replicate;       %�����ֵͼ��
figure(13)                                                                 %��ʾ�Ҷ�ͼ
subplot(2,2,1)
imshow(uint8(mandril_colorgray))
title('mandril-color.tif �Ҷ�ͼ')
subplot(2,2,2)                                                             %��ʾ�˲�ͼ��
imshow(uint8(mandril_colorgray1_zero))
title('mandril-color.tif "zero"��ʽ-��=1')
subplot(2,2,3)
imshow(uint8(mandril_colorgray1_replicate))
title('mandril-color.tif "replicate"��ʽ-��=1')
subplot(2,2,4)
imshow(uint8(mandril_colorgray1_optsub))                                   %��ʾ��ֵͼ��
title('mandril-color.tif ��ֵͼ��-��=1') 

lena512color = imread('lena512color.tiff');                                %��ȡ��ɫͼ��
lena512colorgray = rgb1gray(lena512color);                                 %���á�NTSC����ʽ�ҶȻ�ͼ�񣬲��á�NTSC��Ϊȱʡ��ʽ
lena512colorgray1_zero = twodConv(lena512colorgray,gaussKernel(1),'zero');             %��ͼ����о�� ����'zero'��ʽ
lena512colorgray1_replicate = twodConv(lena512colorgray,gaussKernel(1),'replicate');   %��ͼ����о�� ����'zero'��ʽ
lena512colorgray1_optsub = lena512colorgray1_zero - lena512colorgray1_replicate;       %�����ֵͼ��
figure(14)                                                                 %��ʾ�Ҷ�ͼ
subplot(2,2,1)
imshow(uint8(lena512colorgray))
title('lena512color.tif �Ҷ�ͼ')
subplot(2,2,2)                                                             %��ʾ�˲�ͼ��
imshow(uint8(lena512colorgray1_zero))
title('lena512color.tif "zero"��ʽ-��=1')
subplot(2,2,3)
imshow(uint8(lena512colorgray1_replicate))
title('lena512color.tif "replicate"��ʽ-��=1')
subplot(2,2,4)
imshow(uint8(lena512colorgray1_optsub))                                    %��ʾ��ֵͼ��
title('lena512color.tif ��ֵͼ��-��=1') 