import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  String message = "Flutter 2022 Project";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "WORDLE",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                width: 50,
                height: 50,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Açklama Kartı"),
                      ));
            },
            child: Text(
              "Alert Diolog!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showGeneralDialog(
                  context: context,
                  barrierColor: Colors.black54,
                  transitionDuration: const Duration(milliseconds: 200),
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  pageBuilder: (BuildContext buildContext, Animation animation,
                          Animation secondaryAnimation) =>
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: MediaQuery.of(context).size.height - 200,
                          padding: const EdgeInsets.all(20),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nasıl Oynanır?\n", style: TextStyle(fontSize: 25, color: Colors.black,
                                decoration: TextDecoration.none,),),
                              Text("\nWORDLE'i 6 denemede bulun.\n\nHer tahmin 5 harfli doğru bir kelime olmalıdır. Göndermek için enter'a basın.\n\nHer tahminden sonra kutucukların renkleri tahmininizin yakınlığına göre değişecektir.\n\n--------------------------------------\nÖrnekler\n",  style: TextStyle(fontSize: 14, color: Colors.black,
                                decoration: TextDecoration.none,)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.green[600]),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("A", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("B", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("O", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("N", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("E", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                ],
                              ),
                              Text("A harfi kelimede var ve doğru yerde.", style: TextStyle(fontSize: 12, color: Colors.black,
                                decoration: TextDecoration.none,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("G", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.yellow[700]),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("İ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("Z", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("E", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("M", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                ],
                              ),
                              Text("İ harfi kelimede var fakat yanlış yerde.", style: TextStyle(fontSize: 12, color: Colors.black,
                                decoration: TextDecoration.none,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("F", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("A", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("L", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.white),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("E", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black,
                                      decoration: TextDecoration.none,)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black), color: Colors.black54),
                                    margin: EdgeInsets.all(5),
                                    width: 30,
                                    height: 30,
                                    child: Text("Z", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white,
                                      decoration: TextDecoration.none,)),
                                  ),
                                ],
                              ),
                              Text("Z harfi kelimede yok.", style: TextStyle(fontSize: 12, color: Colors.black,
                                decoration: TextDecoration.none,),),
                            ],
                          ),
                        ),
                      ));
            },
            child: Text(
              "Full Screen Diolog!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
