
enum StatusVegetacao {normal,atencao,urgente}

void main() {
 DateTime dataColeta = DateTime(2026, 8, 25, 12, 30);
 DateTime agora = DateTime.now();
 
 
 
 var dadosRodovia = (codigo:116 ,rodovia: 'BR-116', densidade: 0.45);

 print('Data da coleta: $dataColeta');
 print('Agora: $agora');
 print('Dados: $dadosRodovia');
 print('Dia: ${dataColeta.day}');
 print('Mês: ${dataColeta.month}');
 print('Ano: ${dataColeta.year}');
 var statusAtual = StatusVegetacao.atencao ;
 print('Status: ${statusAtual.name}');
  statusAtual = StatusVegetacao.urgente ;
 print('Novo Status: ${statusAtual.name}');

 DateTime proximaInspecao = dataColeta.add(const Duration(days: 7));
 print('Próxima inspeção sugerida: $proximaInspecao');
}
