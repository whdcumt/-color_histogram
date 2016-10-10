%RGB three channel histogram curve drawing
%the format of the picname in the first line is like 'test.jpg' 
function hist  = colorhistogram(picname)  
pic1 = imread(picname);  
pic1R = pic1(:,:,1);  
pic1G = pic1(:,:,2);  
pic1B = pic1(:,:,3);    
% gets the histogram data of each channel
[m,n]=size(pic1R);                            %size of image 
rhist=zeros(1,256);                           %Probability of gray level appearance,set the value as 0
    for k=0:255      
        rhist(k+1)=length(find(pic1R==k))/(m*n);     %Compute the probaility of each gray level
    end  
ghist=zeros(1,256);   
    for k=0:255      
        ghist(k+1)=length(find(pic1G==k))/(m*n);       
    end  
bhist=zeros(1,256);   
    for k=0:255      
        bhist(k+1)=length(find(pic1B==k))/(m*n);      
    end  
  plot(0:255,rhist,'r',0:255,ghist,'g',0:255,bhist,'b');
  axis([0 255,-inf,inf]) %set the range of horizontal ordinate
  xlabel('Gray Levels');ylabel('Frequency');title('Color Histogram');
  print('-dbitmap','C:\abc.bmp'); 

end 