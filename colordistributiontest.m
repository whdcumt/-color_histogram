%%��һ�ַ���
a=imread('c:\what.jpg');
plot3(a(:,1), a(:,2), a(:,3),'r.','MarkerSize',0.5)
scatter3(a(:,1), a(:,2), a(:,3))
plot3(a(:,1), a(:,2), a(:,3), 'or');

%%��ɢ�����
x=[4229042.63      4230585.02    4231384.96    4231773.63    4233028.58    4233296.71    4235869.68    4236288.29];
y=[431695.4   441585.8      432745.6 436933.7      428734.4       431946.3 428705.0      432999.5];
z=[1.019 1.023      1.011      1.022      1.020      1.022      1.022      1.023];
scatter3(x,y,z)
%%�ڶ��γ���
i=1/a(:,1);
j=1/a(:,2);
k=1/a(:,3);
plot3(a(:,1), a(:,2), a(:,3),'color',[i j k],'MarkerSize',0.5)

%%�����γ���
a=imread('1.jpg');
[i j k]=size(a);
for in=1:440
    for jn=1:440
        plot3(a(in,jn,1), a(in,jn,2), a(in,jn,3),'color',[double(a(in,jn,1))/double(255) double(a(in,jn,2))/double(255) double(a(in,jn,3))/double(255)],'MarkerSize',4)
        hold on;    
    end
end
%plot3(a(:,:,1), a(:,:,2), a(:,:,3),'r.','MarkerSize',0.5)
plot3(a(:,:,1), a(:,:,2), a(:,:,3),'color',[double(a(:,:,1))/double(255) double(a(:,:,2))/double(255) double(a(:,:,3))/double(255)],'MarkerSize',0.5)


%%���ϼ��ַ�����Ȼʧ���ˣ����Ǵ��з�������������ھ�����ɫֵ������һά�ģ�������plot3��ǰ��������һ�������Ծ���
%���Ժ��������޸�Ϊ����������Ļ��㡣�����ͱ�֤�����ʱ�����ɫֵ��һά���飨RGB��ֵ��
%ͬʱmatlab����RGB����ͨ������ֵΪ[0 1]������[0 255],��Ҫ��ͼ���ԭͨ��ֵ�ֱ����255ת�����÷�Χ��