import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:investment_app_project/screens/home_page.dart';
import 'package:investment_app_project/screens/investment_post.dart';
import 'package:investment_app_project/screens/news.dart';
import 'package:investment_app_project/screens/others.dart';
import 'package:investment_app_project/widget/support_widget.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {



  int currentTabIndex = 0;

  late List<Widget> pages;
  late HomePage homePage;
  late InvestmentPost investmentPost;
  late News news;
  late Others others;

  @override
  void initState(){
    homePage = HomePage();
    investmentPost = InvestmentPost();
    news = News();
    others = Others();
    pages = [homePage, investmentPost, news, others];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: currentTabIndex!=5?AppWidget().whiteColor:AppWidget().primaryColor,
        color:  AppWidget().primaryColor,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items:  [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.feed_outlined, color: Colors.white),
          Icon(Icons.newspaper_outlined, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
