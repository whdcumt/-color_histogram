p1= calcrgb2hist('1.jpg');  
p2= calcrgb2hist('2.jpg');  
g = corrcoef(p1 ,p2);  
fprintf('���ϵ��Ϊ = %d\n',g(1,2));  
%ǰ��Ϊ�������ϵ���ĳ���
%����Ϊ������ͨ����ֱ��ͼ���߻��Ƶ�һ��ͼ��
plot(0:255,rhist,'r',0:255,ghist,'g',0:255,bhist,'b')
axis([0 255,-inf,inf]) %���ú������ȡֵ��Χ