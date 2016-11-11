close all
clear all

%leitura automatica
sistema = strcat('C:\Users\IASLAN\Documents\Programação\algoritmos de pdi\GoldStandard\','Automatico','.csv');
fid = fopen(sistema);
sistema = textscan(fid,'%s%s%s','delimiter',';','headerLines',1);
fclose(fid);
%leitura manual
manual=strcat('C:\Users\IASLAN\Documents\Programação\algoritmos de pdi\GoldStandard\', 'Manual','.csv');
fid = fopen(manual);
manual = textscan(fid,'%s%s%s%s%s%s','delimiter',';','headerLines',1);
fclose(fid);

%medidas do sistema
a1 = sistema{3};
%medidas manuias
b1 = manual{3};
%medidas manuais
for i=1:(size(a1,1))
    AqtdOvos(i) = str2double(cell2mat(a1(i)));
end

%medidas automaticas
for j=1:(size(b1,1))
    MqtdOvos(j) = str2double(cell2mat(b1(j)));
end


n = size(MqtdOvos,2);
%verdadeiro positivo 
VPqtd = ((AqtdOvos(:,:)*100)./MqtdOvos(:,:));

VNqtd = ((MqtdOvos(:,:)*100)./AqtdOvos(:,:));
    
for i=1:n
    if(VPqtd(1,i)>100)
        VPqtd(1,i) =100;
    end
    if(VNqtd(1,i)>100)
        VNqtd(1,i) = 100;
    end
    
end

   
%falsos
FNqtd(:,:) = 100-VPqtd(:,:);
FPqtd(:,:) = 100-VNqtd(:,:);

%acuracia
for i=1:n
    AcQtdOvos(1,i) = ((VPqtd(1,i))+VNqtd(1,i))/((VPqtd(1,i)+FNqtd(1,i)+VNqtd(1,i)+FPqtd(1,i)))*100;
end
MediaVerdadeiroPositivoQtd = sum(VPqtd(:,:))/n
MediaVerdadeiroNegativoQtd = sum(VNqtd(:,:))/n
MediaFalsoPositivoQtd = sum(FPqtd(:,:))/n
MediaFalsoNegativoqtd = sum(FNqtd(:,:))/n
Acuracia = sum(AcQtdOvos(:,:))/n

