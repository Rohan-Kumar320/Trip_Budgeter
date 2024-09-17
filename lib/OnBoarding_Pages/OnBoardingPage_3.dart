import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage_3 extends StatefulWidget {
  const OnBoardingPage_3({super.key});

  @override
  State<OnBoardingPage_3> createState() => _OnBoardingPage_3State();
}

class _OnBoardingPage_3State extends State<OnBoardingPage_3> {
  @override
  Widget build(BuildContext context) {
    final reswidth = MediaQuery.of(context).size.width;
    final resheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: resheight * 0.23,),
          Text("Make Your Plans With Us",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
          Center(
              child: Lottie.network("https://lottie.host/015d6404-d7c5-4dcc-9650-c665c9c61c8d/YJGMCYAY0z.json",height: resheight * 0.44)
          ),
        ],
      ),
    );
  }
}
