import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:investment_app_project/components/banners/slider.dart';
import 'package:investment_app_project/components/banners/template_green_news.dart';
import 'package:investment_app_project/components/banners/template_green.dart';
import 'package:investment_app_project/components/text_field/txt_field1.dart';
import 'package:investment_app_project/db/investmentList2.dart';
import 'package:investment_app_project/db/investment_list.dart';
import 'package:investment_app_project/db/news_list.dart';
import 'package:investment_app_project/screens/bottom_nav.dart';
import 'package:investment_app_project/screens/notification.dart';
import 'package:investment_app_project/widget/support_widget.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

var srchController =TextEditingController();

final investmentlist=InvestmentList();
final newslist=NewsList();
final latestlist=InvestmentList2();


class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppWidget().whiteColor,
      appBar: AppBar(
        backgroundColor: AppWidget().whiteColor,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 20,
        title: headerTitle(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppWidget().heightSpace,
              SearchBar(),
              AppWidget().height5Space,
              Tranding(),
              AppWidget().heightSpace,
              LatestInvestment(),
              AppWidget().heightSpace,
              Recommended(),
              AppWidget().heightSpace,
              NewsForYou(),


            ],
          ),
        ),
      ),
    );
  }

  Widget headline(String text, bool flag, Function() onTap) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: AppWidget.QuickSandBlackBoldHeadline(),
          ),
        ),
        AppWidget().widthSpace,
        InkWell(
          onTap: onTap,
          child: Text(
            flag ? "See More" : "",
            style: AppWidget.QuickSandGreenSize(12),
          ),
        )
      ],
    );
  }

  //didnt use in homepage
  Widget Header() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          width: AppWidget().screenWidth,
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF349FBA),
              AppWidget().primaryColor,
            ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Positioned(
          top: 35,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("HI", style: AppWidget.homepage1(
                      Colors.grey.shade200, AppWidget().screenWidth * 0.06)),
                  SizedBox(width: 10,),
                  Text("Joy00", style: AppWidget.homepage1(
                      Color(0xFFCDAD84), AppWidget().screenWidth * 0.08)),
                ],
              ),
              Text("Looking for an Investment?",
                style: AppWidget.homepage1(
                    Color(0xFFFCFAED), AppWidget().screenWidth * 0.03),
              ),
            ],
          ),
        ),
        //animated text kit
        Positioned(
          top: 115,
          left: 25,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Invest",
                textStyle: AppWidget.homepage1(
                    Color(0xFF714478).withOpacity(.9),
                    AppWidget().screenWidth * 0.05),
              ),
              TyperAnimatedText(
                "Connect",
                textStyle: AppWidget.homepage1(
                    Color(0xFF5D701E), AppWidget().screenWidth * 0.05),
              ),
              TyperAnimatedText(
                "& Discover",
                textStyle: AppWidget.homepage1(
                    Color(0xFFDEB156), AppWidget().screenWidth * 0.05),
              ),
              TyperAnimatedText(
                "Profitable Opportunities",
                textStyle: AppWidget.homepage1(
                    Color(0xFF2F4B71).withOpacity(.8),
                    AppWidget().screenWidth * 0.05),
              ),
              TyperAnimatedText(
                "Online!",
                textStyle: AppWidget.homepage1(
                    Color(0xFF2F4B71).withOpacity(.8),
                    AppWidget().screenWidth * 0.06),
              ),
            ],
            isRepeatingAnimation: true, // Animation repeats
            pause: Duration(milliseconds: 1000),
            repeatForever: true,
          ),
        ),
        //image
        Positioned(
          right: -5,
          top: 25,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 20),
            child: Lottie.asset("assets/splash_screen/splash_screen.json",
              width: AppWidget().screenWidth / 2.5,
              height: AppWidget().screenHeight / 10,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }

  Widget SearchBar() {
    return Row(
      children: [
        Expanded( // Ensures it takes available space
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppWidget().primaryColor,
                gradient: AppWidget().searchGradient(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search_outlined, size: 24,
                      color: AppWidget().black33Color),
                  AppWidget().widthSpace,
                  Expanded(
                    child: TxtField1(controller: srchController,
                        hintText: "Search",
                        obscureText: false),
                  ),
                  AppWidget().widthSpace,
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                        Icons.settings_input_composite_rounded, size: 18,
                        color: AppWidget().greyColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Tranding() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 20.0, right: 20, bottom: 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Tranding", style: AppWidget.QuickSandBlackBoldHeadline(),),
            AppWidget().height5Space,
            SliderBar(),
          ],
        ),
      ),
    );
  }

  Widget LatestInvestment() {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 20.0, right: 20, bottom: 8),
      child: Column(
        children: [
          headline("Latest Invesment", true, () {
            Get.offAll(()=>BottomNav(index : 1));
          }),
          AppWidget().height5Space,
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: AppWidget().fixPadding),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                latestlist.investmentList2.length,
                    (index) {
                  final recommendedItemData = latestlist.investmentList2[index];
                  return TemplateGreen(data: recommendedItemData,index: index,);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Recommended() {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 20.0, right: 20, bottom: 8),
      child: Column(
        children: [
          headline("Recommended For You", true, () {
            Get.offAll(()=>BottomNav(index : 1));
          }),
          AppWidget().height5Space,
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: AppWidget().fixPadding),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                investmentlist.investmentList.length,
                    (index) {
                  final recommendedItemData = investmentlist
                      .investmentList[index];

                  return TemplateGreen(data: recommendedItemData,index: index,);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget NewsForYou() {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 20.0, right: 20, bottom: 8),
      child: Column(
        children: [
          headline("Related News", true, () {
            Get.offAll(()=>BottomNav(index : 1));
          }),
          AppWidget().height5Space,
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: AppWidget().fixPadding),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                investmentlist.investmentList.length,
                    (index) {
                      final news = newslist.investedRelatedNews[index];
                      return TemplateGreenNews(data: news,index: index,);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget headerTitle(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Lottie.asset("assets/splash_screen/splash_screen.json",
          ),
        ),
        AppWidget().widthSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Joy",
                style: AppWidget.headLineTextFieldStyle18Black(),
                overflow: TextOverflow.ellipsis,
              ),
              AppWidget().heightBox(2),
              Text(
                "Choose your investment...",
                style: AppWidget().medium14Grey,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        AppWidget().widthSpace,
        GestureDetector(
          onTap: () {
            Get.to(NotificationScreen());
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppWidget().whiteColor,
              boxShadow: AppWidget().boxShadow,
            ),
            alignment: Alignment.center,
            child: Iconify(
              Ep.bell_filled,
              color: AppWidget().primaryColor,
              size: 22.0,
            ),
          ),
        )
      ],
    );
  }

}