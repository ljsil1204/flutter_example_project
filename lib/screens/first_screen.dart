import 'package:flutter/material.dart';
import 'package:flutter_example_project/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int count = 0;

  void increase() {
    setState(() {
      count = count + 1;
    });
  }

  void decrease() {
    setState(() {
      count = count - 1;
    });
  }

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
              "count : $count",
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: decrease, child: Text("-down")),
                ElevatedButton(onPressed: increase, child: Text("+up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
