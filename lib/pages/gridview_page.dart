import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here is a gridview"),
      ),
      body: Center(
          //child: Text("AMIA is the best and I love it.")
          child: GridView.count(
        //shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        children: <Widget>[
          Container(
            //color: Colors.red,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              color: Colors.blue,
            ),
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(18.0),
            //width: 200,
            //height: 500,
            //padding: const EdgeInsets.all(8.0),
            child: Text("asdf. . . . . . . . . . . . . . . "),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "AMIA is the best and I love it.AMIA is the best and I love it.AMIA is the best and I love it.AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("AMIA is the best and I love it."),
          ),
        ],
      )),
    );
  }
}
