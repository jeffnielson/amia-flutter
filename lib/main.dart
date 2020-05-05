import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:amia_flutter/symptomRoute.dart';
import 'package:amia_flutter/listRoute.dart';
import 'package:amia_flutter/storageRoute.dart';
import 'package:amia_flutter/pages/mobx_counter_page.dart';
import 'package:amia_flutter/pages/gridview_page.dart';
import 'package:amia_flutter/pages/gridViewBuilder_page.dart';
import 'package:amia_flutter/pages/get_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(body1: TextStyle(fontSize: 36)),
      ),
      home: HomeScreen(),
      initialRoute: '/',
      namedRoutes: {
        '/': GetRoute(page:HomeScreen()),
        '/GetPage': GetRoute(page: GetPage(), transition: Transition.rightToLeft)
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
            child: Column(
          children: [
            HelloFromFirebase(),
            IconButton(
              icon: Icon(Icons.radio_button_checked),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SymptomRoute()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListRoute()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.sd_storage),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StorageRoute()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MobxCounterPage()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.grid_on),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPage()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.grid_on),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewBuilderPage()),
                )
              },
            ),
            IconButton(
              icon: Icon(Icons.get_app),
              onPressed: () => {
                //Get.to(GetPage())
                Get.toNamed('/GetPage')
              },
            ),
            IconButton(
              icon: Icon(Icons.grade),
              onPressed: () => {
                 Get.snackbar('Hi', 'i am a modern snackbar')
                 
              },
            ),
            IconButton(
              icon: Icon(Icons.grade),
              onPressed: () => {
                 Get.defaultDialog(
                title: "My Title",
                content: Text("Hi, it's my dialog"),
                confirm: FlatButton(
                  child: Text("Ok"),
                  onPressed: () => print("OK pressed"),
                ),
                cancel: FlatButton(
                  child: Text("Cancel"),
                  onPressed: () => Get.back(),
                )
              )
              }
),
            

           
          ],
        )
        )
        );
  }
}

class HelloFromFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Get document snapshot as a stream
      stream: Firestore.instance
          .collection('collection')
          .document('document')
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('No data');
        }
        // find the field named 'field', return this
        Map<String, dynamic> documentFields = snapshot.data.data;
        return Text(documentFields['field']);
      },
    );
  }
}
