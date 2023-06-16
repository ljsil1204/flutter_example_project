import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  List<Widget> myChildren = [];

  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 50; i++) {
      myChildren.add(Text("hi", style: TextStyle(fontSize: 20)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: myChildren,
        ),
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [Text("1. hi"), Text("2. hi2"), Text("3. hi3")],
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         "1. first",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       Text(
      //         "2. second",
      //         style: TextStyle(fontSize: 14),
      //       ),
      //       Text(
      //         "3. third",
      //         style: TextStyle(fontSize: 10),
      //       )
      //     ],
      //   ),
      // ),
      // body: const Center(
      //     child: Text(
      //   'Hello, flutter',
      //   style: TextStyle(
      //     fontSize: 40,
      //     color: Colors.blue,
      //     fontFamily: 'NotoSansKR',
      //     fontWeight: FontWeight.bold,
      //   ),
      // ))
      // body: Container(
      //     child: Text("Hellow, flutter!"),
      //     padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      //     width: 300,
      //     height: 300,
      //     color: Colors.blue
      //     // padding: EdgeInsets.all(30),
      //     // padding: EdgeInsets.fromLTRB(left: 10, top: 60, right: 90, bottom: 20),
      //     // padding: EdgeInsets.only(left: 10),
      //     ),
      // body: Padding(child: Text("Hello"), padding: EdgeInsets.all(30)),
      // body: Center(
      //   // child: Image.asset('images/logo.png'),
      //   child: Image.network(
      //       "https://funkylife.in/wp-content/uploads/2023/03/good-morning-image-531.jpg"),
      // ),
    );
  }
}
