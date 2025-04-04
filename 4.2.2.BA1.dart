
class Text extends Widget {
  final String data;

  Text(this.data);
}

class Column extends Widget {
  List<Text> children = [];

  Column({required this.children});
}

class Center extends Widget {
  final Column child;

  Center({required this.child});
}

class Scaffold extends Widget {
  final Center body;

  Scaffold({required this.body});
}

class MaterialApp extends Widget {
  final Scaffold home;

  MaterialApp({required this.home});
}

class Widget {}


void main() {
  MaterialApp myApp = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
          Text('Hello'),
           Text('World')
           ],
          ),
        ),
      ),
    );
}
