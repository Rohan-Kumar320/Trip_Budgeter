import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage_4 extends StatefulWidget {
  const OnBoardingPage_4({super.key});

  @override
  State<OnBoardingPage_4> createState() => _OnBoardingPage_4State();
}

class _OnBoardingPage_4State extends State<OnBoardingPage_4> {
  @override
  Widget build(BuildContext context) {
    final reswidth = MediaQuery.of(context).size.width;
    final resheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: resheight * 0.20,),

          Center(child: Text("Join Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),)),
          Text( "To The Best Budget Trip Planner", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25)),
          Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                children: [
                  TextSpan(text: "In Pakistan", style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ),

          SizedBox(height: resheight * 0.04,),

          Center(
              child: Lottie.network("https://lottie.host/6f7ecd14-6314-49ef-b2ab-21e20dd23c84/FgL14WfWfD.json",height: resheight * 0.35)
          ),

          SizedBox(height: resheight * 0.05,),

        Container(
          width: reswidth * 0.7,
          height: resheight * 0.05,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Background color
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Boxy design
              ),
            ),
            child: Center(child: Text("Join Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
        )
        ],
      ),
    );
  }
}
