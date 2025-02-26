import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:investment_app_project/screens/bottom_nav.dart';
import 'package:lottie/lottie.dart';

import '../widget/support_widget.dart';
import 'content_model.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final box = GetStorage();

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0); //control onboard page
    super.initState();
  }

  @override
  void dispose() {
    _controller
        .dispose(); // kono funtion k end/finish korar jonno void dispose() function er vhitor ta likha hoi
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: content.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(top: 80, left: 25, right: 25),
                    child: Column(
                      children: [
                        //SizedBox(height: 40,),
                        Lottie.asset(
                          content[i].image,
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            content[i].title,
                            style: AppWidget.headLineTextFieldStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          content[i].description,
                          style: AppWidget.LightTextFieldStyle(),
                        ),
                      ],
                    ),
                  );
                }),
          ),

          SizedBox(height: 15,),

          //dotbuild genarator
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                    (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 400), // Smooth animation
                  curve: Curves.easeInOut, // Transition effect
                  height: 8.0,
                  width: currentIndex == index ? 30 : 15, // Expanding effect
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Color(0xFF4FAD5A) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if(currentIndex!=0)
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(120, 40),
                    ),
                    onPressed: () {
                      _controller.previousPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOutQuad);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.navigate_before_outlined,
                          color: Color(0xFF4FAD5A),
                          size: 16,
                        ),
                        Text("PREVIOUS",
                            style: TextStyle(
                              color:Color(0xFF4FAD5A),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins1',
                            )),
                      ],
                    )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4FAD5A),
                    minimumSize: Size(120, 40),
                  ),
                  onPressed: () {
                    if (currentIndex == content.length - 1) {
                      box.write('onboard_seen', true);
                      Get.off(BottomNav());
                    }
                    _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOutQuad);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(currentIndex < content.length - 1 ? "NEXT" : "START",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins1',
                          )),
                      Icon(Icons.navigate_next_outlined,
                      color: Colors.white,
                        size: 16,
                      ),
                    ],
                  )),
            ],
          ),
          //fixed
          SizedBox(height: MediaQuery.of(context).size.height / 10),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8.0,
      width: currentIndex == index ? 30 : 20,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          //color: Color(0xFF2368a6),
          color: currentIndex == index ? Color(0xFF4FAD5A) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
