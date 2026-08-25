void main() {
 List<String> status = ['NORMAL', 'ATENCAO', 'URGENTE'];
 List<double> densidades = [0.42, 0.71, 0.91, 0.55];

 print('Densidades antes do add: $densidades');
 print('Adicionando densidade: 0.63');
 densidades.add(0.63);
 print('Densidades após add: $densidades');

 for (final item in densidades) {
 print('Densidade: $item');
 if (item <= 0.50) {
    print('Status: ${status[0]}');
 }
 else if (item >=0.51 && item <= 0.69) {
    print('Status: ${status[1]}');
 }
 else if (item >= 0.70) {
    print('Status: ${status[2]}');
 }}
 List<double> altas = densidades.where((d) => d >= 0.70).toList();

 print('Densidades altas: $altas');
 print('Numero de densidades: ${densidades.length}');
}
