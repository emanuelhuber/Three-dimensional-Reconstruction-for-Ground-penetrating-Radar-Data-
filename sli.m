%3D  visualization
[m,n,p] = size(inVB);


M=0:1:(m-1);
%timezeroΪ��ʱ��㣬sampling_intervalΪ�������
N = 0:1:(n-1);
%stepsizeΪ���࣬�������
P = 0:0.04:(p-1)*0.04;
%line_distanceΪ���߾���
[X,Y,Z] = meshgrid(N,M,P);
%����������
hs = slice(X,Y,Z,inVB,[],N,[]);

%��ʾ��Ƭ
set(hs,'FaceColor','interp','EdgeColor','None');
set(gca,'zdir','reverse')
%view(90,-90)
set(gca,'XTick',[0 1 2])
set(gca,'XTickLabel',{'0','100','200'});%�޸����귶Χ
set(gca,'YTick',[0 1 2])
set(gca,'YTickLabel',{'2','3','4'});%�޸����귶Χ
%ylim([0,300])
%xlim([0,300])
%zlim([4,6])
set(gca,'fontsize',12);
xlabel('inline');ylabel('crossline');zlabel('ʱ��/ns')
%������Ƭ��ɫ
figure(1)
caxis([-2000 2000]);
%ָ����ɫ��Χ
axis vis3d;
%��������ϵ��ת
box on;
%���ÿ�������
grid off;
%ȥ���ָ���
alpha(0.9980394);
%ʹ����͸��������ɫֵ��Ӧ
alphamap('vdown');
alphamap('decrease', 2);
alim([-20000 20000]);
%colormap gray;
axis tight;