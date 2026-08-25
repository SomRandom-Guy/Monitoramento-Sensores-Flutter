enum StatusVegetacao { normal, atencao, urgente }

void main() {

  Map<String, dynamic> medicao1 = {
    'id': 1,
    'areacodigo': 'SP280-KM120',
    'alturaVegetacao': 0.56,
    'densidade': 0.42,
    'temperatura': 28,
    'umidade': 55.62,
    'sensorId': 'Sensor Alfa',
  };

  Map<String, dynamic> medicao2 = {
    'id': 2,
    'areacodigo': 'BR116-KM020',
    'alturaVegetacao': 0.76,
    'densidade': 0.78,
    'temperatura': 22,
    'umidade': 50.02,
    'sensorId': 'Sensor Beta',
  };

  Map<String, dynamic> medicao3 = {
    'id': 3,
    'areacodigo': 'BR101-KM100',
    'alturaVegetacao': 0.68,
    'densidade': 0.64,
    'temperatura': 32,
    'umidade': 44.83,
    'sensorId': 'Sensor Gamma',
  };

  List<String> areas = ['AREA-1: BR-101', 'AREA-2: BR-116', 'AREA-3: SP280'];
  List<Map<String, dynamic>> medicoes = [medicao1, medicao2, medicao3];
  List<num> medicoesDensidade = [
    (medicao1['densidade'] as num),
    (medicao2['densidade'] as num),
    (medicao3['densidade'] as num)
  ];

  double densidadeExtra = 1.12;
  var statusAtual = StatusVegetacao.normal;
  String observacoes = 'null';

  List<String> rodovias = [
    'SP-280',
    'BR-116',
    'BR-101',
  ];

  var dadosRodovia1 = ('Código: ${medicao1['areacodigo']}', 'Densidade:${medicao1['densidade']}');
  var dadosRodovia2 = ('Código: ${medicao2['areacodigo']}', 'Densidade:${medicao2['densidade']}');
  var dadosRodovia3 = ('Código: ${medicao3['areacodigo']}', 'Densidade:${medicao3['densidade']}');

  print('Numero de Areas: ${areas.length}');
  print('Numero de medições: ${medicoes.length}');

  print('\nResumo de Dados:');
  print('Area-1: $dadosRodovia1');
  print('Area-2: $dadosRodovia2');
  print('Area-3: $dadosRodovia3');

  num mediaDensidade = ((medicao1['densidade'] as num) + (medicao2['densidade'] as num) + (medicao3['densidade'] as num)) / medicoes.length;
  print('\nMédia de densidade: ${mediaDensidade.toStringAsFixed(2)}');

  print('\nAnálise de Status:');
  for (final item in medicoesDensidade) {
    print('Densidade: $item');
    if (item <= 0.50) {
      statusAtual = StatusVegetacao.normal;
      print('Status: ${statusAtual.name}');
    } else if (item >= 0.51 && item <= 0.69) {
      statusAtual = StatusVegetacao.atencao;
      print('Status: ${statusAtual.name}');
    } else if (item >= 0.70) {
      statusAtual = StatusVegetacao.urgente;
      print('Status: ${statusAtual.name}');
    }
  }

  var idSensores1 = ('Rodovia: ${rodovias[0]}', 'Sensor ID:${medicao1['sensorId']}');
  var idSensores2 = ('Rodovia: ${rodovias[1]}', 'Sensor ID:${medicao2['sensorId']}');
  var idSensores3 = ('Rodovia: ${rodovias[2]}', 'Sensor ID:${medicao3['sensorId']}');

  print('\nRodovias e Sensores:');
  print('Area-1: $idSensores1');
  print('Area-2: $idSensores2');
  print('Area-3: $idSensores3');

  print('\nObservações: ${observacoes == 'null' ? "não informado" : observacoes}');
  
  print('Dado errônio detectado!'); 

  // --- ATUALIZAÇÃO DOS DADOS ---
  medicao1['densidade'] = densidadeExtra;

  print('\nExibindo chaves e valores da Medição 1 (Atualizada):');
  medicao1.forEach((chave, valor) {
    print('$chave => $valor');
  });

  print('\nReavaliando dados...');

  // 1. RECALCULANDO A MÉDIA (Atualizando a variável existente com os novos dados)
  mediaDensidade = ((medicao1['densidade'] as num) + (medicao2['densidade'] as num) + (medicao3['densidade'] as num)) / medicoes.length;
  print('Nova Média de densidade: ${mediaDensidade.toStringAsFixed(2)}');

  // 2. RECONSTRUINDO A LISTA (Para o loop ler os dados novos)
  medicoesDensidade = [
    (medicao1['densidade'] as num),
    (medicao2['densidade'] as num),
    (medicao3['densidade'] as num)
  ];

  print('\nNova Análise de Status:');
  for (final item in medicoesDensidade) {
    print('Densidade: $item');
    if (item <= 0.50) {
      statusAtual = StatusVegetacao.normal;
      print('Status: ${statusAtual.name}');
    } else if (item >= 0.51 && item <= 0.69) {
      statusAtual = StatusVegetacao.atencao;
      print('Status: ${statusAtual.name}');
    } else if (item >= 0.70) {
      statusAtual = StatusVegetacao.urgente;
      print('Status: ${statusAtual.name}');
    }
  }
}
