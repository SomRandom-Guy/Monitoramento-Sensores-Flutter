void main() {
 int idArea = 1;
 int idMedicao = 10;
 int totalMedicoes = 12;
 int sensoresAtivos = 3;
 int alertasAbertos = 2;


 int somaIds = idArea + idMedicao;
 int proximaMedicao = idMedicao + 1;
 int sensorX2 = sensoresAtivos * 2;


 print('ID da área: $idArea');
 print('ID da medição: $idMedicao');
 print('Total de medições: $totalMedicoes');
 print('Sensores ativos: $sensoresAtivos');
 print('Alertas Abertos: $alertasAbertos');
 print('Soma dos IDs: $somaIds');
 print('Próxima medição: $proximaMedicao');
 if (alertasAbertos >= 3){
     print('Operação crítica!');}
 else {
    print('Operação Estável.');}
 print('Dobro dos Sensores: $sensorX2');
}
