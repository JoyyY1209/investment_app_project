import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investment_app_project/components/banners/slider.dart';
import 'package:investment_app_project/components/template_green.dart';
import 'package:investment_app_project/components/template_news.dart';
import 'package:investment_app_project/components/txt_field1.dart';
import 'package:investment_app_project/widget/support_widget.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

var srchController =TextEditingController();
final investmentList = [
  {
    "image": "assets/recommended/img1.png",
    "name": "Tech Growth Fund",
    "description": "A high-growth tech investment portfolio...",
    "category": "Technology",
    "company": "TechRise Inc.",
    "risk": "Medi..",
    "pricePerShare": 150.75,
    "isFavorite": false,
    "roi" : 6.12,
  },
  {
    "image": "assets/recommended/img2.png",
    "name": "Green Energy Stocks",
    "description": "Sustainable energy investments with long-term returns...",
    "category": "Renewable Energy",
    "company": "Green Future Corp.",
    "risk": "Low",
    "pricePerShare": 89.50,
    "isFavorite": false,
    "roi" : 3.67,
  },
  {
    "image": "assets/recommended/img3.png",
    "name": "Real Estate REIT",
    "description": "Invest in prime real estate properties...",
    "category": "Real Estate",
    "company": "Urban Estate Ltd.",
    "risk": "High",
    "pricePerShare": 120.00,
    "isFavorite": false,
    "roi" : 12.88,
  },
  {
    "image": "assets/recommended/img4.png",
    "name": "Sustainable Clothing Stocks",
    "description": "Support eco-friendly and ethical fashion brands...",
    "category": "Clothing",
    "company": "GreenWear Ltd.",
    "risk": "Medi..",
    "pricePerShare": 60.80,
    "isFavorite": false,
    "roi" : 7.34,
  },
];

final List<Map<String, dynamic>> investedRelatedNews = [
  {
    "headline": "Real Estate Prices Surge in Urban Areas",
    "publisher": "Forbes",
    "datePublished": "26 Feb, 25",
    "image": "assets/recommended/img1.png",
    "description": "Housing prices in major cities have seen a 10% rise due to increased demand.",
    "newsLink": "https://www.forbes.com/real-estate-market",
    "bookmarked": false,
  },
  {
    "headline": "Agricultural Sector Sees Record Growth",
    "publisher": "AgriDaily",
    "datePublished": "25 Feb, 25",
    "image": "assets/recommended/img2.png",
    "description": "Favorable weather conditions and modern farming techniques boost agricultural yields.",
    "newsLink": "https://www.agridaily.com/agriculture-growth",
    "bookmarked": false,
  },
  {
    "headline": "Tech Companies Lead Stock Market Gains",
    "publisher": "CNBC",
    "datePublished": "24 Feb, 25",
    "image": "assets/recommended/img3.png",
    "description": "Tech giants like Apple and Microsoft continue to drive stock market growth.",
    "newsLink": "https://www.cnbc.com/tech-stocks",
    "bookmarked": false,
  },
  {
    "headline": "Clothing Industry Adopts Sustainable Practices",
    "publisher": "Vogue Business",
    "datePublished": "23 Feb, 25",
    "image": "assets/recommended/img4.png",
    "description": "Major fashion brands are shifting towards eco-friendly materials and processes.",
    "newsLink": "https://www.voguebusiness.com/sustainable-fashion",
    "bookmarked": false,
  },
];


class _HomePageState extends State<HomePage> {

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppWidget().whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppWidget().heightSpace,
              Header(),
              AppWidget().height5Space,
              SearchBar(),
              AppWidget().height5Space,
              Tranding(),
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
}

Widget headline(String text, bool flag,Function() onTap) {
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
          flag?"See More":"",
          style: AppWidget.QuickSandGreenSize(12),
        ),
      )
    ],
  );
}

Widget Header(){
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
                Text("HI",style: AppWidget.homepage1(Colors.grey.shade200, AppWidget().screenWidth * 0.06)),
                SizedBox(width: 10,),
                Text("Joy00",style: AppWidget.homepage1(Color(0xFFCDAD84), AppWidget().screenWidth * 0.08)),
              ],
            ),
            Text("Looking for an Investment?",
              style: AppWidget.homepage1(Color(0xFFFCFAED), AppWidget().screenWidth*0.03),
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
              textStyle: AppWidget.homepage1(Color(0xFF714478).withOpacity(.9), AppWidget().screenWidth*0.05),
            ),
            TyperAnimatedText(
              "Connect",
              textStyle: AppWidget.homepage1(Color(0xFF5D701E), AppWidget().screenWidth*0.05),
            ),
            TyperAnimatedText(
              "& Discover",
              textStyle: AppWidget.homepage1(Color(0xFFDEB156), AppWidget().screenWidth*0.05),
            ),
            TyperAnimatedText(
              "Profitable Opportunities",
              textStyle: AppWidget.homepage1(Color(0xFF2F4B71).withOpacity(.8), AppWidget().screenWidth*0.05),
            ),
            TyperAnimatedText(
              "Online!",
              textStyle: AppWidget.homepage1(Color(0xFF2F4B71).withOpacity(.8), AppWidget().screenWidth*0.06),
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
          padding: const EdgeInsets.only(top: 0.0,left: 20),
          child: Lottie.asset("assets/splash_screen/splash_screen.json",
            width: AppWidget().screenWidth/2.5,
            height: AppWidget().screenHeight/10,
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
                Icon(Icons.search_outlined, size: 24, color: AppWidget().black33Color),
                AppWidget().widthSpace,
                Expanded(
                  child: TxtField1(controller: srchController, hintText: "Search", obscureText: false),
                ),
                AppWidget().widthSpace,
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.settings_input_composite_rounded, size: 18, color: AppWidget().greyColor),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget Tranding(){
  return Padding(
    padding: const EdgeInsets.only(top:8,left: 20.0,right: 20,bottom: 0),
    child: Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Tranding",style: AppWidget.QuickSandBlackBoldHeadline(),),
          AppWidget().height5Space,
          SliderBar(),
        ],
      ),
    ),
  );
}

Widget Recommended(){
  return Padding(
    padding: const EdgeInsets.only(top:4,left: 20.0,right: 20,bottom: 8),
    child: Column(
      children: [
        headline("Recommended For You", true, (){}),
        AppWidget().heightSpace,
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: AppWidget().fixPadding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              investmentList.length,
                  (index) {
                final recommendedItemData = investmentList[index];

                return TemplateGreen(data: recommendedItemData);
              },
            ),
          ),
        )
      ],
    ),
  );
}

Widget NewsForYou(){
  return Padding(
    padding: const EdgeInsets.only(top:4,left: 20.0,right: 20,bottom: 8),
    child: Column(
      children: [
        headline("Related News", true, (){}),
        AppWidget().heightSpace,
        Column(
          children: List.generate(investedRelatedNews.length,
              (index){
                final news=investedRelatedNews[index];
                return TemplateNews(data: news);
              },
          ),
        )
      ],
    ),
  );
}