import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 12), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => ***()));
    // });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Microsoft_To-Do_icon.svg/2515px-Microsoft_To-Do_icon.svg.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                Text("UpTodo", style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
