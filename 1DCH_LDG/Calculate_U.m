function [U] = Calculate_U(M,Q,D,R,Q_BL,RL,Q_BR,N)
%����Calculate Q�������U
%   ���������NΪ��Ԫ����hΪ����,Q_BR,Q_BL����Q���̱߽��Ҷ˵���ܸվ���,��˵���ܸվ���
%                   MΪ���������ڻ����ܸվ���DΪ�󵼺�Ļ��������ڻ����ܸվ���
%  ���������    U          

%Ԥ����
F=zeros(3*N,1);
%��װ�Ҷ���
F=M*Q-(D-Q_BR)*R-Q_BL*RL;
%�����Է���
U=M\F;
end