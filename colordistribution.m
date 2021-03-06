%RGB three channel histogram curve drawing
%the format of the picname in the first line is like 'test.jpg' 
function distribution  = colordistribution(picname)  
a = imread(picname);  
[i j k]=size(a);
for in=1:i
    for jn=1:j
        plot3(a(in,jn,1), a(in,jn,2), a(in,jn,3),'color',[double(a(in,jn,1))/double(255) double(a(in,jn,2))/double(255) double(a(in,jn,3))/double(255)],'MarkerSize',50);
        hold on;
    end
end
axis([0 255,0 255,0 255]); %set the range of horizontal ordinate
xlabel('Red');ylabel('Green');zlabel('Blue');title('Color Distribution');
print('-dbitmap','C:\abc.bmp'); 
end 