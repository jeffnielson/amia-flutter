import 'package:flutter/material.dart';
import "package:flutter_mobx/flutter_mobx.dart";
import "package:amia_flutter/store/counter.dart";


class MobxCounterPage extends StatelessWidget {

  final Counter counter = Counter();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Fluatter and Mobx')),
        body: Center(
            child: Column(children: <Widget>[
          Text("Counter", style: TextStyle(fontSize:30.0),
          ),
          Observer(
            builder: (_) => Text("${counter.count}", style: TextStyle(fontSize:42.0),)),
          Row(children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text("Add"),
              onPressed: counter.increment,
            ),
            FlatButton.icon(
              icon: Icon(Icons.remove),
              label: Text("Remove"),
              onPressed: counter.decrement,
            ),
          ],
          )
        ])));
  }
}
