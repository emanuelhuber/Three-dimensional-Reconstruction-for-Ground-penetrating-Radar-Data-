%moving average 
x=0:3200;
n=15; % nΪģ�峤�ȣ�ֵ���Ըı�
mean = ones(1,n)./n;  %meanΪ1��n��ģ�壬������Ԫ�ص�ֵ��Ϊ1/n
for i =1:250
    y = conv(BTOL_tra920(i,:),mean);
    Vy15(i,:)=y(1:length(y)-length(mean)+1);
end