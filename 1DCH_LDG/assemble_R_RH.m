function [FR,UR] = assemble_R_RH(U,R_BR,R_BL,D,N)
%���� assemble_R_RH ��װR������ľ���
%   ���������U��ʼֵ��NΪ��Ԫ����hΪ������DΪ�󵼺�Ļ��������ڻ����ܸվ���
%                   R_BR,R_BL����R���̱߽��Ҷ˵���ܸվ���,��˵���ܸվ���
%   ���������FR������ULΪ��U�仯��������ֵ���⴦�����
                 
%Ԥ����
FR=zeros(3*N,1);
UR=zeros(3*N,1);
%�߽紦��
UR(3*N-2:3*N,1)=U(1:3,1);
for i=1:N-1
    UR(3*i-2:3*i,1)=U(3*i+1:3*i+3,1);
end
%�Ҷ���
FR=-(R_BL+D)*U+R_BR*UR;
end