// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Expansion Tile List",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile List"),
        ),
        body: ExpansionTile(
          title: Text("Change Theme"),
          leading: Icon(Icons.info),
          //backgroundColor: Color.fromARGB(154, 244, 67, 54),
          iconColor: Color.fromARGB(255, 238, 8, 8),
          children: [
            ListTile(
              title: Text("Light Theme"),
              textColor: Colors.black,
              tileColor: Color.fromARGB(54, 33, 149, 243),
              hoverColor: Color.fromARGB(255, 250, 0, 0),
              leading: Icon(Icons.wb_sunny_outlined),
              onTap: () => {
                Get.changeTheme(
                  ThemeData.light(),
                ),
              },
            ),
            ListTile(
              title: Text("Dark Theme"),
              leading: Icon(Icons.wb_sunny),
              tileColor: Color.fromARGB(83, 33, 149, 243),
              textColor: Colors.black,
              hoverColor: Color.fromARGB(255, 92, 255, 4),
              onTap: () => {
                Get.changeTheme(
                  ThemeData.dark(),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
