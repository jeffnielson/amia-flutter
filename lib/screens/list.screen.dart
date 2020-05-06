import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Grids, Lists, and Wraps'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SharedActionButton(
              title: 'Grid',
              onPressed: () => Get.to(GridScreen()),
            ),
            SharedActionButton(
              title: "List",
              onPressed: () => Get.to(ListScreen()),
            ),
            SharedFirebaseHello(),
            SharedActionButton(
              title: "Wrap",
              onPressed: () => Get.to(WrapScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
