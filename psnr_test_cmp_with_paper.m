clear all
close all
clc

%% load files for fig.11

img_101_gt = single(load('.\inputs\synthetic\CAVE\101.mat').img_hs );
img_101 = load('.\outputs\recon_synthetic\101_recon.mat').x_recon;
img_101_19120 = load('.\outputs\recon_synthetic\101_19120_recon.mat').x_recon;
img_101_19140 = load('.\outputs\recon_synthetic\101_19140_recon.mat').x_recon;
img_101_19160 = load('.\outputs\recon_synthetic\101_19160_recon.mat').x_recon;
img_101_19180 = load('.\outputs\recon_synthetic\101_19180_recon.mat').x_recon;

img_egy_gt = single(load('.\inputs\synthetic\CAVE\egyptian_statue.mat').img_hs);
img_egy = load('.\outputs\recon_synthetic\egyptian_statue_recon.mat').x_recon;

%% Display image 101 with 19120 model (in the paper 33.71dB)
% figure(1)
% imshow(img_101(:,:,28));

figure(2)
imshow(img_101(160:320,270:410,28));

figure(3)
imshow(img_101(250:265,320:335,28)); % 40.6294 difference  6.9194

psnr(img_101_19120(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535)
%  0.9664 vs paper 0.96
ssim(img_101_19120(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535) 

%% Display image 101 with 19140 model (in the paper 33.71dB)
% figure(1)
% imshow(img_101(:,:,28));

figure(2)
imshow(img_101(160:320,270:410,28));

figure(3)
imshow(img_101(250:265,320:335,28)); % 39.7943 difference  6.0843

psnr(img_101_19140(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535)
%   0.9548 vs paper 0.96
ssim(img_101_19140(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535) 

%% Display image 101 with 19160 model (in the paper 33.71dB)
% figure(1)
% imshow(img_101(:,:,28));

figure(2)
imshow(img_101(160:320,270:410,28));

figure(3)
imshow(img_101(250:265,320:335,28)); % 37.4195 difference  3.7095

psnr(img_101_19160(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535)
%   0.9159 vs paper 0.96
ssim(img_101_19160(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535) 

%% Display image 101 with 19180 model (in the paper 33.71dB)
% figure(1)
% imshow(img_101(:,:,28));

figure(2)
imshow(img_101(160:320,270:410,28));

figure(3)
imshow(img_101(250:265,320:335,28)); % 44.6245 difference  10.9145

psnr(img_101_19180(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535)
%   0.9798 vs paper 0.96
ssim(img_101_19180(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535) 

%% Display image 101 (in the paper 33.71dB)
% figure(1)
% imshow(img_101(:,:,28));

figure(2)
imshow(img_101(160:320,270:410,28));

figure(3)
imshow(img_101(250:265,320:335,28)); % 41.7134 difference  8.0034

psnr(img_101(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535 )
%  0.9722 vs paper 0.96
ssim(img_101(250:265,320:335,:),img_101_gt(250:265,320:335,:)./65535) 

%% Display image egyptian (in the paper 35.40dB)

% figure(1)
% imshow(img_egy(:,:,28));

figure(2)
imshow(img_egy(240:300,270:330,28));  

figure(3)
imshow(img_egy(265:275,295:305,28)); %39.4496 difference 4.0496
% 0.9577 vs 0.97
psnr(img_egy(265:275,295:305,:),img_egy_gt(265:275,295:305,:) ./65535)

%% load files for fig.13

img_92_gt = single(load('.\inputs\synthetic\CAVE\92.mat').img_hs );
img_92 = load('.\outputs\recon_synthetic\92_recon.mat').x_recon;

img_103_gt = single(load('.\inputs\synthetic\CAVE\103.mat').img_hs);
img_103 = load('.\outputs\recon_synthetic\103_recon.mat').x_recon;

img_strawberry_gt = single(load('.\inputs\synthetic\CAVE\fake_and_real_strawberries.mat').img_hs);
img_strawberry = load('.\outputs\recon_synthetic\fake_and_real_strawberries_recon.mat').x_recon;

%% Display image 103 (in the paper 33.31dB)
% figure(1)
% imshow(img_103(:,:,28));

figure(2)
imshow(img_103(25:125,310:410,25)); 

figure(3)
imshow(img_103(60:75,370:385,28)); % 35.8213 difference 2.5113
psnr(img_103(60:75,370:385,:),img_103_gt(60:75,370:385,:)./65535 )
% 0.9230 vs paper 0.97
ssim(img_103(60:75,370:385,:),img_103_gt(60:75,370:385,:)./65535 )

%% Display image 92 (in the paper 28.74dB)
% figure(1)
% imshow(img_92(:,:,28));

figure(2)
imshow(img_92(90:190,290:390,28));

figure(3)
imshow(img_92(110:130,290:310,28)); % 55.7241 difference 26.9841

psnr(img_101(110:130,290:310,:),img_101_gt(110:130,290:310,:)./65535 )
% 0.9972 vs paper 0.85
ssim(img_101(110:130,290:310,:),img_101_gt(110:130,290:310,:)./65535 )
%% Display image strawberry (in the paper34.68dB)

% figure(1)
% imshow(img_strawberry(:,:,28));

figure(2)
imshow(img_strawberry(270:390,110:230,31));

figure(3)
imshow(img_strawberry(260:280,190:210,31)); %46.6282 difference 11.9482
% 0.9818 vs paper 0.96
psnr(img_strawberry(260:280,190:210,:),img_strawberry_gt(260:280,190:210,:) ./65535 )

%% psnr test
