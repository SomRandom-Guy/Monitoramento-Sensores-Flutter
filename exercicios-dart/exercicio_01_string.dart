void main() {
 String codigoArea = 'BR116-KM045';
 String rodovia = 'BR-116';
 String localizacao = 'Registro / SP';
 String sensorId = 'SENSOR-11';

 // Interpolação (forma preferida)
 String frase2 = 'Área: $codigoArea | Rodovia: $rodovia';
 String frase3 = 'Local: $localizacao | Sensor: $sensorId';

 print(frase2);
 print(frase3);

 print(codigoArea.toUpperCase());
 print(sensorId.length);
 print(rodovia.contains('-'));
}
