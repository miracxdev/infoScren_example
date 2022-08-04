import 'package:flutter/material.dart';
import 'package:infoscreen_example/Screens/second_screen.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3FDFD),
      appBar: AppBar(
        backgroundColor: Color(0xffE3FDFD),
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SecondScreen())));
            },
            child: const Text(
              "Skip",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Lottie.asset('assets/images/lottie1.json',
              height: 200, width: double.infinity),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Standup",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Are you ready to learn languages \n     easily in the easiest way?",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 13),
                ),
                const SizedBox(
                  height: 70,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SecondScreen())));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff1149c3),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 15, bottom: 15)),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
