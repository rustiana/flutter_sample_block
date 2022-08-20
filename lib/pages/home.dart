import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOCK BUILDER"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "0",
          style: TextStyle(fontSize: 50),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}
