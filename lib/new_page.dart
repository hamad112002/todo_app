import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fsdakjgjkfsajk"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Image(
              width:double.infinity ,
              fit:BoxFit.cover ,
              image: AssetImage("assets/new.png")),
          Image(image: AssetImage("assets/SHAPE.png")),
        ],
      )
    );
  }
}
