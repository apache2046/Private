function friction(varargin)
% ʹ�� friction(��֪��,��֪����ֵ,��֪��,��֪����ֵ) ���øú���
% ��֪��˵����
% 'm' : ���������
% 'mu' : ������Ӵ���Ķ�Ħ������
% 'f' : ������Ӵ���Ķ�Ħ����
% 'g' : �������ٶȵ�ֵ��Ĭ��Ϊ 9.8

m = '?'; mu = '?'; f = '?'; g = 9.8;
  % ������֪����Ĭ��ֵ
value_amount = 0;
setting = varargin;
while length(setting) > 1
  value_amount = value_amount + 1;
  prop = setting{1};  value = setting{2};  setting = setting(3:end);
  switch prop
    case 'm'
      m = value;
    case 'mu'
      mu = value;
    case 'f'
      f = value;
    case 'g'
      g = value;
      value_amount = value_amount - 1;
    otherwise
      value_amount = value_amount - 1;
  end
end
  % ��ȡ�û��������֪��
if value_amount < 2;
  error('��֪��̫��!')
end
  % ����֪����������ʱ����

if m == '?';
  % ������Ϊδ֪��ʱ
  m = f / ( mu * g );
  disp(['��֪������ĳ�Ӵ����ϵĶ�Ħ������СΪ',num2str(f),'N���Ӵ���Ķ�Ħ������Ϊ',num2str(mu),...
    '���������������gȡ',num2str(g),'N / kg��']);
  disp(['�����������Ϊ',num2str(m),'kg��']);
elseif f == '?';
  % ����Ħ����Ϊδ֪��ʱ
  f = m * g * mu;
  disp(['��֪���������Ϊ',num2str(m),'kg���Ӵ���Ķ�Ħ������Ϊ',num2str(mu),...
    '���������ڸýӴ����ϵĶ�Ħ������С��gȡ',num2str(g),'N / kg��']);
  disp(['�������ڸýӴ����ϵĶ�Ħ����Ϊ',num2str(f),'N��']);
else mu == '?';
  % ����Ħ������Ϊδ֪��ʱ
  mu = f / ( m * g );
  disp(['��֪���������Ϊ',num2str(m),'kg����ĳ�Ӵ���Ķ�Ħ������СΪ',num2str(f),...
    'N����ýӴ���Ķ�Ħ��������gȡ ',num2str(g),' N/kg��']);
  disp(['�𣺸ýӴ���Ķ�Ħ��������Ϊ',num2str(mu)]);
end

if f < 0 | m < 0 | g < 0 | mu < 0;
  error('��������֪�������쳣��');
end
  % �����������ݳ��ִ���ʱ����
