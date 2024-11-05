import 'package:flutter/material.dart';
import 'package:todo_assignment/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage("assets/SHAPE.png"),
              ),
            ),

            SizedBox(height: 30,),
            Center(child: Image(image: AssetImage("assets/myPic.png"))),
            Text("Get Things Done With ToDo",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            Container(
              height: 50,
              width: 300,
              color: Color(0xff71CEBD),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                  },
                  child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))),
            )
          ],
        ),
      ),
    );
  }
}
