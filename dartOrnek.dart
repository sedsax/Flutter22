void main() {
  
  var number = 5;
  var number2 = 9;
  
  number -= 2; // number = number-2 ile aynı ifade
  print(number); // 3 yazar
  print(number++); // ilk olarak 3 yazar sonra number değeri artırılır, number 4 olur
  print(++number); // önce number artırılır 5 olur sonra değer yazılır
  
  int? emptyNumber; // buradadaki emptyNumber değişkeninin değeri null yani boş
  print(emptyNumber.runtimeType); // değişkenin tipini gösterir
  
  emptyNumber = 6; // işte burada 6 değerini atadığımız için artık tipi integer
  print(emptyNumber.runtimeType);
  
  int? emptyNumber2; // yine bir null değer
  int calculation = emptyNumber2 ?? 2; // emptyNumber2 null ise calculation değişkenine 2' yi ata
  print(calculation);
  
  var ders1 = 'Flutter';
  var ders2 = 'Unity';
  var alan = ders1 == 'Flutter' ? 'Mobil' : 'Oyun';
  print(alan);
  alan = ders2 == 'Flutter' ? 'Mobil' : 'Oyun';
  print(alan);
  print("-----------------------------");
  // Bu şartlı ifadeyi if-else ile uzun yoldan da yazabiliriz
  if(ders1=='Flutter') {
    var alann = 'Mobil';
    print(alann);
  }else{
    var alann = 'Oyun';
    print(alann);
  }
  
  
}
