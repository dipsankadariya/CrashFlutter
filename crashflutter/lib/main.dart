import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score Board",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int score = 0;

  void increase() {
    setState(() {
      score++;
    });
  }

  void decrease() {
    setState(() {
      score--;
    });
  }

  void reset() {
    setState(() {
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: IconButton(
          onPressed: reset,
          icon: Icon(Icons.delete),
          iconSize: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Single Scoreboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Score",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text(
            "$score",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: increase,
                  icon: Icon(Icons.arrow_upward),
                  iconSize: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 50),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: decrease,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 60,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
