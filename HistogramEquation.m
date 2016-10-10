function HistogramEqualization(PicName)
sourcePic=imread(PicName);  
[m,n,o]=size(sourcePic);  
figure,imshow(sourcePic,[]);  
%grayPic=rgb2gray(sourcePic);  
grayPic=sourcePic(:,:,1);  
  
gp=zeros(1,256); %计算各灰度出现的概率  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %计算新的各灰度出现的概率  
S1=zeros(1,256);  
S2=zeros(1,256);  
tmp=0;  
for i=1:256  
    tmp=tmp+gp(i);  
    S1(i)=tmp;  
    S2(i)=round(S1(i)*256);  
end  
for i=1:256  
    newGp(i)=sum(gp(find(S2==i)));  
end  
  
newGrayPic=grayPic; %填充各像素点新的灰度值  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
nr=newGrayPic;  
  
  
grayPic=sourcePic(:,:,2);  
  
gp=zeros(1,256); %计算各灰度出现的概率  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %计算新的各灰度出现的概率  
S1=zeros(1,256);  
S2=zeros(1,256);  
tmp=0;  
for i=1:256  
    tmp=tmp+gp(i);  
    S1(i)=tmp;  
    S2(i)=round(S1(i)*256);  
end  
for i=1:256  
    newGp(i)=sum(gp(find(S2==i)));  
end  
  
newGrayPic=grayPic; %填充各像素点新的灰度值  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
ng=newGrayPic;  
  
  
  
grayPic=sourcePic(:,:,3);  
  
gp=zeros(1,256); %计算各灰度出现的概率  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %计算新的各灰度出现的概率  
S1=zeros(1,256);  
S2=zeros(1,256);  
tmp=0;  
for i=1:256  
    tmp=tmp+gp(i);  
    S1(i)=tmp;  
    S2(i)=round(S1(i)*256);  
end  
for i=1:256  
    newGp(i)=sum(gp(find(S2==i)));  
end  
  
newGrayPic=grayPic; %填充各像素点新的灰度值  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
nb=newGrayPic;  
  
  
res=cat(3,nr,ng,nb);  
%saveas(gcf,'E:\第一篇论文最终稿\对比算法\对比图像\Histogram.jpg')
figure,imshow(res,[]);
imwrite(res, 'E:\第一篇论文最终稿\对比算法\对比图像\HistogramEqualization.jpg')
%print(2,'-djpeg','E:\第一篇论文最终稿\对比算法\对比图像\Histogram.jpg');  