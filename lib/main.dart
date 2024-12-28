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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Pointer Counter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text('Team A', style: TextStyle(fontSize: 25)),
                    Text('$teamA',
                        style: TextStyle(
                          fontSize: 150,
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        child: Text(
                          'Increment 1 point',
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text(
                          'Increment 2 point',
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text(
                          'Increment 3 point',
                        )),
                  ],
                  // This trailing comma makes auto-formatting nicer for build methods.
                ),
                Container(
                  height: 400,
                  child: VerticalDivider(
                    indent: 40,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text('Team B', style: TextStyle(fontSize: 25)),
                    Text('$teamB',
                        style: TextStyle(
                          fontSize: 150,
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamB += 1;
                          });
                        },
                        child: Text(
                          'Increment 1 point',
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text(
                          'Increment 2 point',
                        )),
                    MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text(
                          'Increment 3 point',
                        )),
                  ],
                  // This trailing comma makes auto-formatting nicer for build methods.
                ),
              ],
            ),
            MaterialButton(
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                child: Text(
                  'Reset',
                )),
          ],
        ));
  }
}
