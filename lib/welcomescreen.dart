import 'package:flutter/material.dart';
import 'package:to_do_app_assignment_ui/introductoryscreen3.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0),
            child: Row(
              children: [
                Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const IntroductoryScreen3()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Welcome to UpTodo",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: "Roboto"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
            child: Text(
              "Please login to your account or create new account to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                decoration: TextDecoration.none,
                fontFamily: "Roboto",
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// Expanded(
//             child: Container(
//               width: 100,
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               child: Row(
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         // Navigator.pop(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) => const LoginScreen()),
//                         // );
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.deepPurple.shade300),
//                       child: const Text("LOGIN")),
//                 ],
//               ),
//             ),
//           )