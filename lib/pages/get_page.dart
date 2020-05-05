import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('infoscreen'),
        ),
        body: Center(
          child: Container(
            child: OutlineButton(
              onPressed: () {Get.back();},
              child: (
                Text("You got Get!, Go back.")
                  
                ),
              ),
          ),
        ),
      );

      
  }
  
}
