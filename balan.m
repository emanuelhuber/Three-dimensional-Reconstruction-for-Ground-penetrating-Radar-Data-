%amplitude equalization
Tmean=mean(mean(abs(Btotalf920)));%�����ֵ
meanX=mean(abs(Btotalf920),1);%ÿ�о�ֵ
Wi=Tmean./meanX;
for i=1:3200 %�ܵ���
    for j=1:250 %�ܲ�����
    BTOL_tra920(j,i)=Wi(i).*Btotalf920(j,i);
    end
end