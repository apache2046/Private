function jump(v,g,theta)
% ʹ�� jump(v,g,theta) ���øú���
% ����˵����
% v : �˶�Ա���ٶȣ���λ m/s��
% g : �������ٶȣ���λ m/s^2��
% theta : �˶�Ա�������ǣ��Ƕ�ֵ��

theta_back = theta
theta = pi * ( theta / 180 );
  % ���Ƕ�ֵתΪ����ֵ
v_x = v * cos(theta);
  % �ٶ���ˮƽ�����ϵķ���
v_y = v * sin(theta);
  % �ٶ��ڴ�ֱ�����ϵķ���
t = ( v_y / g ) * 2;
  % ͣ���ڿ��е�ʱ��

s = t * v_x
  % ���յ���Զ����

t = 0:t/10:t;
  % ����ʱ������
x = v_x * t;
  % ����ˮƽ����λ������
for(i= 1 : length(t) )
  y(i) = v_y * t(i) - 1/2 * g * t(i)^2;
end
  % ���ɴ�ֱ����λ������
hold on
axis off
  % ����֮ǰ���Ĺ켣
plot(x,y,'LineWidth',2,'LineStyle',':');
  % �����Զ���̵Ĺ켣
text(s,0, ['��',num2str(theta_back),'�㣺',num2str(s),'m��'] ,'BackgroundColor','w','HorizontalAlignment','center');
  % ���ע������