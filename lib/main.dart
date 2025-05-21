import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "List App", home: ListPage());
  }
}

class ListPage extends StatelessWidget {
  final List<String> items = List.generate(100, (i) => "items $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List App')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text('${items[index]}'));
        },
      ),
    );
  }
}
