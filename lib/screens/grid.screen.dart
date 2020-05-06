import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:amia_flutter/theme.dart";

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar(title: 'Grids, Lists, and Wraps'),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? 2
                      : 3),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("asdf"),
            ),
            Container(
              color: Colors.redAccent,
              child: Text("asdf"),
            ),
            Container(
              color: Colors.blueGrey,
              margin: EdgeInsets.all(12),
              padding:EdgeInsets.all(14),
              child: Text("asdf"),
            ),
            Container(
              color: appTheme().primaryColor,
              child: Text("asdf"),
            ),
            Container(
              color: appTheme().secondaryHeaderColor,
              child: Text("asdf"),
            ),
            Container(
              child: Text("asdf"),
            ),
            Container(
              child: Text("asdf"),
            ),
            Container(
              child: Text("asdf"),
            ),
            Container(
              child: Text("asdf"),
            ),
            Container(
              child: Text("asdf"),
            ),
          ],
        ));
  }
}
