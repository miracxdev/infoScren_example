import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE3FDFD),
      appBar: AppBar(
        backgroundColor: const Color(0xffE3FDFD),
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
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
          Lottie.asset(
            'assets/images/lottie2.json',
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Start Learning",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Discover your next skill learn \nanything you want!",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 13),
                ),
                const SizedBox(
                  height: 70,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff1149c3),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.only(
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
