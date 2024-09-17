import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trip_budgeter/OnBoarding_Pages/OnBoardingPage_1.dart';
import 'package:trip_budgeter/OnBoarding_Pages/OnBoardingPage_2.dart';
import 'package:trip_budgeter/OnBoarding_Pages/OnBoardingPage_3.dart';
import 'package:trip_budgeter/OnBoarding_Pages/OnBoardingPage_4.dart';

class OnBoardingPages extends StatefulWidget {
  const OnBoardingPages({super.key});

  @override
  State<OnBoardingPages> createState() => _OnBoardingPagesState();
}

class _OnBoardingPagesState extends State<OnBoardingPages> {

  //Control The View
  PageController _controller = PageController();

  //Keep Track Of The Page
  bool OnlastPage = false;
  bool OnFirstPage = true;

  @override
  Widget build(BuildContext context) {
    final reswidth = MediaQuery.of(context).size.width;
    final resheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              OnFirstPage = (index == 0);
              OnlastPage = (index == 3);
            });
          },
          children: [
            // InitialPage1(),
            // InitialPage2(),
            // InitialPage3(),
            // InitialPage4(),
            OnBoardingPage_1(),
            OnBoardingPage_2(),
            OnBoardingPage_3(),
            OnBoardingPage_4(),
            ],
          ),
          Container(
            alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //Previous
                  OnFirstPage ? Text("") :
                  Container(
                    width: reswidth * 0.2,
                    height: resheight * 0.05,
                    child: ElevatedButton(
                      onPressed: () {_controller.previousPage(duration: Duration(milliseconds: 350), curve: Curves.easeOut);},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey, // Background color
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Boxy design
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Icon(Icons.arrow_back,color: Colors.white,),
                          // SizedBox(width: 8), // Adding some space between the icon and the text
                          Text("Back",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),



                  //Dots Indicator
                  SmoothPageIndicator(controller: _controller, count: 4),


                  //Next
                  OnlastPage ?
                  Text("") :
                  Container(
                    width: reswidth * 0.2,
                    height: resheight * 0.05,
                    child: ElevatedButton(
                      onPressed: () {_controller.nextPage(duration: Duration(milliseconds: 350), curve: Curves.easeIn);},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent, // Background color
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Boxy design
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Icon(Icons.arrow_forward,color: Colors.white,),
                          // SizedBox(width: 8), // Adding some space between the icon and the text
                          Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  )


                ],
              )
          )
        ]
      ),
    );
  }
}
