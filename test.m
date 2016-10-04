p1= calcrgb2hist('1.jpg');  
p2= calcrgb2hist('2.jpg');  
g = corrcoef(p1 ,p2);  
fprintf('相关系数为 = %d\n',g(1,2));  
%前面为计算相关系数的程序
%后面为将三个通道的直方图曲线绘制到一张图上
plot(0:255,rhist,'r',0:255,ghist,'g',0:255,bhist,'b')
axis([0 255,-inf,inf]) %设置横坐标的取值范围