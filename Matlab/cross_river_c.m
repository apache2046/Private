clear all;close all;
  % �������ռ�

% ���ò���

water = 3
  % ˮ�����ٶȣ���λ m/s��

w_length = 5
  % �ӵĿ�ȣ���λ m��

boat = 4
  % С�����ٶȣ���λ m/s��

theta = 120
  % �ɺӵĽǶȣ��Ƕ�ֵ��

speed = 2500
  % ���С���ɺӶ������ٶ�

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
