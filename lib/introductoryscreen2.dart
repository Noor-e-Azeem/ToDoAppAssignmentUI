import 'package:flutter/material.dart';
import 'package:to_do_app_assignment_ui/introductoryscreen1.dart';
import 'package:to_do_app_assignment_ui/introductoryscreen3.dart';

class IntroductoryScreen2 extends StatelessWidget {
  const IntroductoryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/intro2.png',
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Create daily routine",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: "Roboto"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "In Uptodo  you can create your personalized routine to stay productive",
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
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const IntroductoryScreen1()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: const Text("BACK")),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IntroductoryScreen3()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple.shade300),
                      child: const Text("NEXT"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
