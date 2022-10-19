// Student sınıfında yaptığım değişiklikleri algılamadığı için Student2 sınıfı oluşturdum ve oradaki verileri kullandım
import 'package:firstproject/models/students.dart';
import 'package:firstproject/models/students2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  String message = "Flutter 2022 Project";
  List<Student> students =
  [Student("Ebrar", "Karakurt", 100, "https://picsum.photos/250?image=9"),
    Student("Elif", "Yaman", 45, "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
    Student("Ahmet", "Kaplan", 55, "https://picsum.photos/250?image=9"),
    Student("Hakan", "Aslan", 90, "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif")
  ];

 // List<Student> students2 = [Student(firstName, lastName, grade, status)]
  List<Student2> students2 = [Student2("Ebrar", "Karakurt", 100, "https://picsum.photos/250?image=9", "geçti"),
    Student2("Elif", "Yaman", 45, "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif", "kaldı"),
    Student2("Ahmet", "Kaplan", 55, "https://picsum.photos/250?image=9", "kaldı"),
    Student2("Hakan", "Aslan", 90, "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif", "geçti")];

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
                itemCount: students2.length,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(students2[i].imagee),
                    ),
                    title: Text(students2[i].firstName + " " + students[i].lastName),
                    subtitle: Text("Aldığı not: " + students2[i].grade.toString()),
                    trailing: buildIcon(students2[i].grade),
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

  String gecmeDurumu(int grade) {
    String sonuc = "";
    if (grade < 60) {
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
