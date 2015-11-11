clear all;close all;
  % �������ռ�

% ���ò���

f1 = 6
  % F1�Ĵ�С����λ N��

f2 = 8
  % F2�Ĵ�С����λ N��

theta = 120
  % �������ļнǣ��Ƕ�ֵ��

pic = true ;
  % �Ƿ�Ҫ��ͼ��true:��ͼ false:����ͼ��

help_line = true ;
  % �Ƿ�Ҫ��渨���ߣ�true:��渨���� false:����渨���ߣ�

help_text = true ;
  % �Ƿ�Ҫ��ͼ�ϱ�עÿ�����Ĵ�С��true:��ע false:����ע��

% ���벿��
theta = pi * ( theta / 180 );
  % ���Ƕ�ֵתΪ����ֵ
x_offset = f2 * cos(theta); y_offset = f2 * sin(theta);
  % ����F2��X��Y�����ϵķ���
x_final = f1 + f2 * cos(theta); y_final = f2 * sin(theta);
  % ���������ζ��������
f = (x_final^2 + y_final^2)^(1/2)
  % ��������Ĵ�С

if pic

  axis off

  line([0,f1],[0,0],'LineWidth',2,'color','r')
  line([0,x_offset],[0,y_offset],'LineWidth',2,'color','g')
  line([0,x_final],[0,y_final],'LineWidth',2,'color','b')
    % ���Ʒ���������ͼƬ

  if help_line
    line([f1,x_final],[0,y_final],'LineWidth',2,'color','b','LineStyle',':')
    line([x_offset,x_final],[y_offset,y_final],'LineWidth',2,'color','b','LineStyle',':')
      % ���Ƹ�����
  end

  if help_text
    text(f1,0, ['F1 =',num2str(f1),'N'] );
    text(x_offset,y_offset, ['F2 =',num2str(f2),'N'] );
    text(x_final,y_final, ['F =',num2str(f),'N'] );
      % ���ע��
  end

end