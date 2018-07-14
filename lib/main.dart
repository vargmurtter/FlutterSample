import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi MAI',
      home: Scaffold (
        appBar: AppBar(
          title: Text('Basic List'),
          backgroundColor: Colors.black12,
        ),
        body: HomePage()
      )
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.android),
          title: Text(
              "Hello",
            style: TextStyle(fontSize: 22.0)
          ),
        ),

        ListTile(
          leading: Icon(Icons.android),
          title: Text("Hello"),
        ),
        ListTile(
          leading: Icon(Icons.android),
          title: Text("Hello"),
        ),
        ListTile(
          leading: Icon(Icons.android),
          title: Text("Go to Forms"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage()),
            );
          }
        ),
      ],
    );
  }
}


class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.black12,
      ),
      body: ListView(
        children: <Widget>[
          TextField(

          ),
          TextField(),
          RaisedButton(onPressed: null, child: Text("Click me"))
        ],
      ),
    );
  }
}