import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Neymiş?'),
        ),
        body: SizedBox.expand(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 350,
                color: Colors.white10,
                margin: EdgeInsets.all(50),
                child: Grid(),
              ),
              const Keyboard(),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), // kaydırmayı(scroll) kilitler, önler
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      itemCount: 30, // 6 row (denenen kelime sayısı), 5 column (bir kelimenin harf sayısı)
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // gridDelegate: children yapısının düzenini yönetir
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 5,
        ),
        itemBuilder: (context, index) { // itemBuilder: widgetları talep üzerine oluşturur
          return Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Center(child: Text(index.toString()),), // kutuların içine index sayılarını ekledik
          );
        }
    );
  }
}

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            KeyboardKey(letter: 'q'),
            KeyboardKey(letter: 'w'),
            KeyboardKey(letter: 'e'),
            KeyboardKey(letter: 'r'),
            KeyboardKey(letter: 't'),
            KeyboardKey(letter: 'y'),
            KeyboardKey(letter: 'u'),
            KeyboardKey(letter: 'ı'),
            KeyboardKey(letter: 'o'),
            KeyboardKey(letter: 'p'),
            KeyboardKey(letter: 'ğ'),
            KeyboardKey(letter: 'ü'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            KeyboardKey(letter: 'a'),
            KeyboardKey(letter: 's'),
            KeyboardKey(letter: 'd'),
            KeyboardKey(letter: 'f'),
            KeyboardKey(letter: 'g'),
            KeyboardKey(letter: 'h'),
            KeyboardKey(letter: 'j'),
            KeyboardKey(letter: 'k'),
            KeyboardKey(letter: 'l'),
            KeyboardKey(letter: 'ş'),
            KeyboardKey(letter: 'i'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            KeyboardKey(letter: 'Sil'),
            KeyboardKey(letter: 'z'),
            KeyboardKey(letter: 'x'),
            KeyboardKey(letter: 'c'),
            KeyboardKey(letter: 'v'),
            KeyboardKey(letter: 'b'),
            KeyboardKey(letter: 'n'),
            KeyboardKey(letter: 'm'),
            KeyboardKey(letter: 'ö'),
            KeyboardKey(letter: 'ç'),
            KeyboardKey(letter: 'Sor'),
          ],
        ),
      ],
    );
  }
}

class KeyboardKey extends StatelessWidget {
  final String letter;
  const KeyboardKey({Key? key, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(3),
      ),
      width: 30,
      height: 45,
      alignment: Alignment.center,
      child: Text(letter),
    );
  }
}


