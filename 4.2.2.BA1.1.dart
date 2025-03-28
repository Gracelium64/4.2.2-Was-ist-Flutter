
class Text extends Widget {
  Text(super.data) : super(home: null, body: null, child: null, children: null);
}

class Column extends Widget {
  Column({required super.children}) : super('', home: null, body: null, child: null);
}

class Center extends Widget {
  Center({required super.child}) : super('', home: null, body: null, children: null);
}

class Scaffold extends Widget {
  Scaffold({required super.body}) : super('', home: null, child: null, children: null);
}

class MaterialApp extends Widget {
  MaterialApp({required super.home}) : super('', body: null, child: null, children: null);
}

class Widget {
  final Scaffold? home;
  final Center? body;
  final Column? child;
  List<Text>? children = [];
  final String? data;

  Widget(this.data,
        {required this.home,
         required this.body,
         required this.child,
         required this.children
        });
}


void main() {
  Widget myApp = MaterialApp(
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
