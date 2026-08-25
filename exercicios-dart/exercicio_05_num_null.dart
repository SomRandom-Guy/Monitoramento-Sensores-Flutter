void main() {
 num leitura = 0.56; // int por baixo
 num densidade = 0.72; // double por baixo
 String observacoes = 'null'; 
 double inclinacaoTerreno = 0.47;

 print(leitura);
 print('Observações: ?? $observacoes "não informado" ');

 if (inclinacaoTerreno != null){
    print('Inclinação do Terreno ${inclinacaoTerreno.toStringAsFixed(2)}');
 }
}
