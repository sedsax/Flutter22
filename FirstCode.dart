// BTK Akademi / Flutter Dersi / Engin Demiroğ

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  String message = "Flutter 2022 Project";
  String sonuc = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Sonucu Gör!"),
          onPressed: (){
            int not = 53;
            if(not < 60) {
              sonuc = "Üzgünüz\nKaldınız!";
            }else{
              sonuc = "Tebrikler\nGeçtiniz!";
            }

            var alert = AlertDialog(
              title: Text("Sınav Sonucu"),
              content: Text(sonuc),
            );
            
            showDialog(context: context, builder: (BuildContext context) => alert);
          },
        ),
      ),
    );
  }
}
