p1= calcrgb2hist('1.jpg');  
p2= calcrgb2hist('2.jpg');  
g = corrcoef(p1 ,p2);  
fprintf('���ϵ��Ϊ = %d\n',g(1,2));  