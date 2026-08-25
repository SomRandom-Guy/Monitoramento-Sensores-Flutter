void main() {
 bool areaAtiva = true;
 bool coletaHabilitada = false;
 bool sensorOnline = false;
 bool intervencaoNecessaria = true;

 print('Área ativa? $areaAtiva');
 print('Coleta habilitada? $coletaHabilitada');
 print('Sensor online? $sensorOnline');
 print('Intervenção necessária? $intervencaoNecessaria');

 if (!sensorOnline) {
 print('Atenção: sensor offline - verificar IoT.');
 }

 if (areaAtiva && coletaHabilitada && sensorOnline) {
 print('Pode simular coleta de sensores.');
 } else {
 print('Coleta bloqueada para esta área.');
 }

 if (intervencaoNecessaria) {
 print('Equipe deve ser acionada!');
 }
}
