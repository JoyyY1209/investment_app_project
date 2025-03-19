import 'package:flutter/material.dart';
import 'package:investment_app_project/db/investment_list.dart';
import 'package:investment_app_project/screens/home_page.dart';
import 'package:investment_app_project/widget/support_widget.dart';

import '../components/banners/template_green.dart';
import '../components/rectangle_box.dart';

class InvestmentPost extends StatefulWidget {
  @override
  State<InvestmentPost> createState() => _InvestmentPostState();
}

final investment = InvestmentList();
int selectedIndex=0;

class _InvestmentPostState extends State<InvestmentPost> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppWidget().whiteColor,
      appBar: AppBar(
        title: Text("Investment Page",
          style: AppWidget.QuickSandGreenSizeBold(24),
        ),
        backgroundColor: AppWidget().whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Category(),
            AppWidget().heightBox(10),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true, // Ensures it takes only required space
                physics: BouncingScrollPhysics(), // Prevents scrolling inside GridView
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 2.0, // Space between columns
                  mainAxisSpacing: 2.0, // Space between rows
                  childAspectRatio: AppWidget().screenHeight*.00108 // Adjusts item height
                ),
                itemCount: investmentlist.investmentList.length,
                itemBuilder: (context, index) {
                  final news = investmentlist.investmentList[index];
                  return TemplateGreen(data: news,index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Category(){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(investment.categories.length,
                (index){
              final data = investment.categories[index];
              return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: RectangleBox(name: data,isSelect: selectedIndex==index,));
            }
        ),
      ),
    );
  }
}

