import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investment_app_project/widget/support_widget.dart';
class TemplateNews extends StatefulWidget {
  final data;
  TemplateNews({super.key,required this.data});

  @override
  State<TemplateNews> createState() => _TemplateNewsState();
}

class _TemplateNewsState extends State<TemplateNews> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: AppWidget().screenWidth,
        margin: EdgeInsets.only(bottom:  AppWidget().fixPadding),
        padding: EdgeInsets.all(AppWidget().fixPadding),
        decoration: BoxDecoration(
          color: AppWidget().whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppWidget().boxShadow,
        ),
        child: Row(
          children: [
            imageWidget(widget.data, (){
              setState(() {
                if(widget.data.containsKey('bookmarked') && widget.data['bookmarked'] is bool)
                  {
                    widget.data['bookmarked']=!widget.data['bookmarked'] as bool;
                  }
              });
            }),
            AppWidget().widthSpace,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppWidget().heightSpace,
                  Text(
                    widget.data['headline']?.toString() ?? 'No HeadLine',
                    style: AppWidget().semibold14Black,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppWidget().heightBox(AppWidget().fixPadding * 0.3),
                  Text(
                    widget.data['publisher']?.toString() ?? 'Unknown Publisher',
                    style: AppWidget().medium12Black,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppWidget().heightBox(AppWidget().fixPadding * 0.3),
                  Text(
                    widget.data['description']?.toString() ?? 'No Description',
                    style: AppWidget().medium12Grey,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                  AppWidget().heightBox(AppWidget().fixPadding * 0.3),
                  Text(
                    widget.data['datePublished']?.toString() ?? 'No Description',
                    style: AppWidget().medium12Grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageWidget(Map<String, dynamic> itemData, Function() onTap) {
  return Container(
    padding: EdgeInsets.all(AppWidget().fixPadding * 0.5),
    width: 110,
    height: AppWidget().screenHeight/15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2.0),
      image: DecorationImage(
        image: AssetImage(itemData['image']?.toString() ?? ''),
        fit: BoxFit.cover,
      ),
    ),
    alignment: Alignment.topLeft,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25.0,
        width: 25.0,
        decoration: BoxDecoration(
          color: AppWidget().primaryColor.withOpacity(0.4),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Icon(
          itemData['bookmarked'] == true
              ? CupertinoIcons.bookmark_fill
              : CupertinoIcons.bookmark,
          color: AppWidget().whiteColor,
          size: 20.0,
        ),
      ),
    ),
  );
}