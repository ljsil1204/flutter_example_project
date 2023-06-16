import 'package:flutter/material.dart';
import 'package:flutter_example_project/screens/second_screen.dart';

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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SecondScreen(
                            screenData: "data from first screen",
                          )));
                },
                child: Text("go second"))
          ],
        ),
      ),
    );
  }
}
