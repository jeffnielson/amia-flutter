import 'package:flutter/material.dart';
//import 'package:amia_flutter/themes/theme.dart';

class ListRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close), onPressed: () => Navigator.pop(context)),
        ],
      ),
      body: ListView(children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {},
        ),
        Text("ListView"),
        Row(children:[
          Text("ListView"),
          Text("ListView"),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),]
        ),
        Text("Wrap"),
        IconButton(icon: Icon(Icons.add_to_queue), onPressed: () {},),
        Text("Wrap"),
        Text("GridView"),
        Text("ListView"),
        Text("Wrap"),
        Text("Wrap"),
        Text("GridView"),
        Text("ListView"),
        Text("Wrap"),
        Text("Wrap"),
        Text("GridView"),
        Text("ListView"),
        Text("Wrap"),
        Text("Wrap"),
        Text("GridView"),
        Text("ListView"),
        Text("Wrap"),
        Text("Wrap"),
        Text("GridView"),
      ]),
    );
  }
}
