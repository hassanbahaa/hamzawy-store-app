import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: const Center(
          child: Text("Hello to Hamzawy Store ",style: TextStyle(fontSize: 35),),
        ),
      ),
    );
  }
}
