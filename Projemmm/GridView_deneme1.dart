// Flutter ın kendi kaynağından yaptığım araştırmada GridView ı böyle denemek istedim fakat ekranda hiçbir şey görünmedi

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 20,
      children: [
        Column(
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.pink.shade50,),
            Container(color: Colors.blue,),
            Container(color: Colors.green,),
          ],
        )
      ],

    );
  }
}
