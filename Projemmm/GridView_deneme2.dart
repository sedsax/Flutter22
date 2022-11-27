//https://blog.logrocket.com/how-to-create-a-grid-list-in-flutter-using-gridview/

//Yukarıdaki kaynak tam da benim aradığım bir kaynak. GridView kullanım çeşitlerini ve detaylarını güzelce anlatmış.
// Hatta klavye ya da buton tarzı bir GridView için GridView.count() yapısının sıklıkla kullanıldığından ve nasıl kullanıldığından bahsetmiş.

//Aşağıdaki kodla istediğim görüntüyü elde ettim fakat GridView.builder daha kullanışlı benim için. Burada elemanları tek tek eklemem gerekli. Oysa GridView.builder' de
// itemCount = 30 dersek ve aşağıdaki yapıda olduğu gibi crossAxisCount: 5, dersek 30 tane ürünü her satırda 5 eleman olacak şekilde dizer.

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 5,
      shrinkWrap: true,
     // padding: EdgeInsets.only(left: 10, right: 10),
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("1"),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("2"),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("3"),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("4"),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("5"),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(child: Text("6"),),
        ),
      ],
    );
  }
}
