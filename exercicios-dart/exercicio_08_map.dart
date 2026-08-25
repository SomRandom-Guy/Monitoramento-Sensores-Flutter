void main() {
 Map<String, dynamic> medicao = {
 'id': 1,
 'areacodigo': 'SP280-KM120',
 'alturaVegetacao': 0.56,
 'densidade': 0.42,
 'temperatura': 28,
 'umidade': 55.62,
 'sensorId': null,
 };

 print(medicao['areacodigo']);
 print(medicao['densidade']);
 print(medicao['temperatura']);

 medicao['densidade'] = 0.61;
 medicao['sensorId'] = 'SENSOR-01';

 print(medicao);

 medicao.forEach((chave, valor) {
 print('$chave => $valor');
 });
}
