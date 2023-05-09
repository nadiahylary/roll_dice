import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var  diceImages = "assets/images/dice-1.png";

  void _rollDice() {
    int rand = Random().nextInt(6) + 1;
    setState(() {
      diceImages = "assets/images/dice-$rand.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.redAccent,
            Colors.deepOrangeAccent,
            Colors.grey,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                diceImages,
                width: 185,
              ),
              TextButton(
                onPressed: _rollDice,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(10),
                ),
                child: const Text(
                  'Roll',
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
      ),
    );
  }
}
