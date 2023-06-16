import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("first screen"),
            ElevatedButton(onPressed: () {}, child: Text("go second"))
          ],
        ),
      ),
    );
  }
}
