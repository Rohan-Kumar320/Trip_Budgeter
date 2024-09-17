import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage_2 extends StatefulWidget {
  const OnBoardingPage_2({super.key});

  @override
  State<OnBoardingPage_2> createState() => _OnBoardingPage_2State();
}

class _OnBoardingPage_2State extends State<OnBoardingPage_2> {
  @override
  Widget build(BuildContext context) {
    final reswidth = MediaQuery.of(context).size.width;
    final resheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: resheight * 0.23,),
          Text("Travel The World With Us",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
          Center(
              child: Lottie.network("https://lottie.host/380df9a6-e92a-4443-ab57-a422be75d940/WqCosMunBz.json",height: resheight * 0.42)
          ),
        ],
      ),
    );
  }
}
