import 'package:flutter/material.dart';
import 'package:flutter_example_project/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "count : ",
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("-down")),
                ElevatedButton(onPressed: () {}, child: Text("+up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
