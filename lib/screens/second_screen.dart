import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("second screen"),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("go first"))
          ],
        ),
      ),
    );
  }
}
