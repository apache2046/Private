function cross_river(water,w_length,boat,theta,varargin)
% ʹ�� cross_river(water,w_length,boat,theta[,speed]) ���øú���
% ����˵����
% water : ˮ�����ٶȣ���λ m/s��
% w_length : �ӵĿ�ȣ���λ m��
% boat : С�����ٶȣ���λ m/s��
% theta : �ɺӵĽǶȣ��Ƕ�ֵ��
% speed : ���С���ɺӶ������ٶȣ���ѡ��Ĭ��Ϊ 2500

speed = 2500;
  % ���ÿ�ѡ������Ĭ��ֵ
setting=varargin;
while length(setting) > 0,
  speed = setting{1};  setting = setting(2:end);
end
  % ��ȡ�û�����Ŀ�ѡ����

% ���벿��
while theta > 360
  theta = theta - 360
end
while theta < -360
  theta = theta + 360
end
if theta > 180 | -180 < theta < 0
  error('С����Զ�޷��ɺ�');
end
  % �жϽǶ��Ƿ���ϱ�׼
theta = pi * ( theta / 180 );
  % ���Ƕ�ֵתΪ����ֵ

x_speed = boat * cos(theta);
y_speed = boat * sin(theta);
  % ����С����ˮƽ����ֱ�����ϵķ��ٶ�
x_speed = x_speed + water;
  % ����С����ˮƽ�����ϵĺ��ٶ�

time = w_length / y_speed
  % ����С������Ӷ԰���ʱ��
x_offset = time * x_speed
  % ����С������Ӷ԰�ʱ��ƫ��λ��

close all
hold on
ylim([0 w_length*1.2])
  % ����ͼ���������
line([0,x_offset],[0,0],'LineWidth',4,'color','b')
line([0,x_offset],[w_length,w_length],'LineWidth',4,'color','b')
  % ����������
comet(0:x_offset/speed:x_offset, 0:w_length/speed:w_length)
  % �Զ�̬��ʽ���С�����˶��켣
line([0,x_offset],[0,w_length],'LineWidth',2,'color','r')
line([x_offset,x_offset],[0,w_length],'LineWidth',2,'color','r','LineStyle',':')
  % ���С���˶��켣�͸�����
text(x_offset/2,w_length + w_length/10, ['x =',num2str(x_offset),'m','  time =',num2str(time),'s'] );
  % ���ע��
