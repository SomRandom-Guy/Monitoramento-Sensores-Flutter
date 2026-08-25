void main() {
 double densidade1 = 0.42;
 double densidade2 = 0.71;
 double densidade3 = 0.91;
 double temperatura = 28.4;
 double umidade = 62.0;

 print('Densidade: ${densidade1.toStringAsFixed(2)}');
 print('Densidade: ${densidade2.toStringAsFixed(2)}');
 print('Densidade: ${densidade3.toStringAsFixed(2)}');

 double soma = densidade1 + densidade2 + densidade3 ;
 print('Soma das densidades: ${soma.toStringAsFixed(2)}');

 double media = (densidade1 + densidade2 + densidade3) / 3;
 print('Média de densidade: ${media.toStringAsFixed(2)}');

 print('Temperatura: ${temperatura.toStringAsFixed(1)} °C');
 print('Umidade: ${umidade.toStringAsFixed(1)} %');

 if (densidade3 >=0.90){
    print('Densidade Alta! Aviso de urgência enviado...');
 }
}
