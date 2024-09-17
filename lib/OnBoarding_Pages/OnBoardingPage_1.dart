import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage_1 extends StatefulWidget {
  const OnBoardingPage_1({super.key});

  @override
  State<OnBoardingPage_1> createState() => _OnBoardingPage_1State();
}

class _OnBoardingPage_1State extends State<OnBoardingPage_1> {
  @override
  Widget build(BuildContext context) {
    final reswidth = MediaQuery.of(context).size.width;
    final resheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: resheight * 0.22,),
          Text("Welcome To Trip Budgeter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
          Center(
              child: Lottie.network("https://lottie.host/73931fe6-a80c-4546-af62-160ccfbdfdd3/khrTKujolT.json",height: resheight * 0.5)
          ),
        ],
      ),
    );
  }
}
