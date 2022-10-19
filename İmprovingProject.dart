/*
Display images from the internet
To work with images from a URL, use the Image.network() constructor.
Image.network('https://picsum.photos/250?image=9'),

One useful thing about the Image widget: It supports animated gifs.
Image.network(
    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif');
    
Placeholders and caching
The default Image.network constructor doesn’t handle more advanced functionality, such as fading images in after loading, or caching images to the device after they’re downloaded.
To accomplish these tasks, see the following recipes:
Fade in images with a placeholder -> https://docs.flutter.dev/cookbook/images/fading-in-images
Work with cached images -> https://docs.flutter.dev/cookbook/images/cached-images
*/
//Burda verileri Student sınıfından aldım, ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("..."),)) ile profil fotoları ekledim  
// fakat hepsine aynı foto eklendi. Her bir öğrenci için farklı profil fotosu eklemeye çalışacağım. Aslında bu da bir öğrenci verisi
// bu yüzden öğrencinin profil fotosunu da Student sınıfında tutabilirim. Flutter' da image veri olarak nasıl tutuuyor ona bakalım
import 'package:firstproject/models/students.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  String message = "Flutter 2022 Project";
  List<Student> students =
  [Student("Ebrar", "Karakurt", 100, "Geçti"),
    Student("Elif", "Yaman", 45, "Kaldı"),
    Student("Ahmet", "Kaplan", 55, "Kaldı"),
    Student("Hakan", "Aslan", 90, "Geçti")
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
                    ),
                    title: Text(students[i].firstName + " " + students[i].lastName),
                    subtitle: Text("Aldığı not: " + students[i].grade.toString()),
                    trailing: buildIcon(students[i].grade),
                  );
                }),
          ),
          Center(
            child: ElevatedButton(
              child: Text("Sonucu Gör!"),
              onPressed: () {
                var sonuc = gecmeDurumu(70);
                showMessage(context, sonuc);
              },
            ),
          ),
        ],
      ),
    );
  }

  String gecmeDurumu(int not) {
    String sonuc = "";
    if (not < 60) {
      sonuc = "Üzgünüz\nKaldınız!";
    } else {
      sonuc = "Tebrikler\nGeçtiniz!";
    }
    return sonuc;
  }

  void showMessage(BuildContext context, String sonuc) {
    var alert = AlertDialog(
      title: Text("Sınav Sonucu"),
      content: Text(sonuc),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

 Widget buildIcon(int grade) {
    if(grade>60) {
      return Icon(Icons.done);
    }else{
      return Icon(Icons.clear);
    }
 }
}
