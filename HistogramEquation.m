function HistogramEqualization(PicName)
sourcePic=imread(PicName);  
[m,n,o]=size(sourcePic);  
figure,imshow(sourcePic,[]);  
%grayPic=rgb2gray(sourcePic);  
grayPic=sourcePic(:,:,1);  
  
gp=zeros(1,256); %������Ҷȳ��ֵĸ���  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %�����µĸ��Ҷȳ��ֵĸ���  
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
  
newGrayPic=grayPic; %�������ص��µĻҶ�ֵ  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
nr=newGrayPic;  
  
  
grayPic=sourcePic(:,:,2);  
  
gp=zeros(1,256); %������Ҷȳ��ֵĸ���  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %�����µĸ��Ҷȳ��ֵĸ���  
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
  
newGrayPic=grayPic; %�������ص��µĻҶ�ֵ  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
ng=newGrayPic;  
  
  
  
grayPic=sourcePic(:,:,3);  
  
gp=zeros(1,256); %������Ҷȳ��ֵĸ���  
for i=1:256  
    gp(i)=length(find(grayPic==(i-1)))/(m*n);  
end  
  
newGp=zeros(1,256); %�����µĸ��Ҷȳ��ֵĸ���  
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
  
newGrayPic=grayPic; %�������ص��µĻҶ�ֵ  
for i=1:256  
    newGrayPic(find(grayPic==(i-1)))=S2(i);  
end  
nb=newGrayPic;  
  
  
res=cat(3,nr,ng,nb);  
%saveas(gcf,'E:\��һƪ�������ո�\�Ա��㷨\�Ա�ͼ��\Histogram.jpg')
figure,imshow(res,[]);
imwrite(res, 'E:\��һƪ�������ո�\�Ա��㷨\�Ա�ͼ��\HistogramEqualization.jpg')
%print(2,'-djpeg','E:\��һƪ�������ո�\�Ա��㷨\�Ա�ͼ��\Histogram.jpg');  