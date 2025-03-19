import 'package:flutter/material.dart';
import 'package:investment_app_project/components/rectangle_box.dart';
import 'package:investment_app_project/db/news_list.dart';
import 'package:investment_app_project/screens/home_page.dart';
import 'package:investment_app_project/widget/support_widget.dart';

import '../components/banners/template_news.dart';

class News extends StatefulWidget {
  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  final newslist = NewsList();
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppWidget().whiteColor,
      appBar: AppBar(
          title: Text("News Page",
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
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: newslist.investedRelatedNews.length,
                itemBuilder: (context, index) {
                  final news = newslist.investedRelatedNews[index];
                  return TemplateNews(data: news,index: index);
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
        children: List.generate(newslist.newsCategories.length,
                (index){
              final data = newslist.newsCategories[index];
              return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: RectangleBox(name: data,isSelect: selectedIndex==index));
            }
        ),
      ),
    );
  }
}

