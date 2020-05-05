import 'package:flutter/material.dart';
import "package:flutter_mobx/flutter_mobx.dart";
import "package:amia_flutter/store/grid_data.dart";

class GridViewBuilderPage extends StatelessWidget {
  final Grid grid = Grid();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Here is a gridview"),
        ),
        body: Center(
            //child: Text("AMIA is the best and I love it.")
            //https://stackoverflow.com/questions/47823409/gridview-builder-creates-page-that-scrolls-endlessly
            child: GridView.builder(
                itemCount: grid.getNumbers().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? 2
                        : 3),
                //shrinkWrap: true,
                //crossAxisCount: 2,
                //childAspectRatio: 0.5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                    child: Observer(builder: (_) {
                      return Text(
                          ". . . . . . . ${grid.getAt(index)} . . . . . . . . ");
                    }),
                  );
                })));
  }
}
