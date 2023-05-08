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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      child: const Center(
        child: Text("Hello NH!",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
