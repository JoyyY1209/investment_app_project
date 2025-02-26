import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investment_app_project/widget/support_widget.dart';

class TemplateGreen extends StatefulWidget {
  final Map<String, dynamic> data; // Ensure data is a Map

  const TemplateGreen({super.key, required this.data});

  @override
  State<TemplateGreen> createState() => _TemplateGreenState();
}

class _TemplateGreenState extends State<TemplateGreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/foodDetail');
      },
      child: Container(
        width: 160,
        margin: EdgeInsets.only(right:  AppWidget().fixPadding),
        padding: EdgeInsets.all(AppWidget().fixPadding),
        decoration: BoxDecoration(
          color: AppWidget().whiteColor,
          //color: AppWidget().primaryColor.withAlpha(20),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: AppWidget().boxShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageWidget(
              widget.data,
                  () {
                setState(() {
                  if (widget.data.containsKey('isFavorite') && widget.data['isFavorite'] is bool) {
                    widget.data['isFavorite'] = !(widget.data['isFavorite'] as bool);
                  }
                });
              },
            ),
            AppWidget().heightSpace,
            Text(
              widget.data['name']?.toString() ?? 'No Name',
              style: AppWidget().semibold14Black,
              overflow: TextOverflow.ellipsis,
            ),
            AppWidget().heightBox(AppWidget().fixPadding * 0.3),
            Text(
              widget.data['company']?.toString() ?? 'No Description',
              style: AppWidget().medium12Black,
              overflow: TextOverflow.ellipsis,
            ),
            AppWidget().heightBox(AppWidget().fixPadding * 0.3),
            Text(
              widget.data['description']?.toString() ?? 'No Description',
              style: AppWidget().medium12Grey,
              overflow: TextOverflow.ellipsis,
            ),
            AppWidget().heightBox(AppWidget().fixPadding * 0.3),
            Row(
              children: [
                Icon(
                  Icons.grade_rounded,
                  color: AppWidget().yellowColor,
                  size: 15.0,
                ),
                AppWidget().widthBox(AppWidget().fixPadding * 0.3),
                Expanded(
                  child: Text(
                    widget.data['rate']?.toString() ?? '0.0',
                    style: AppWidget().medium12Black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                AppWidget().width5Space,
                Text(
                  "\$${(widget.data['price'] as num?)?.toStringAsFixed(2) ?? '0.00'}",
                  style: AppWidget().semibold14Black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget imageWidget(Map<String, dynamic> itemData, Function() onTap) {
  return Container(
    padding: EdgeInsets.all(AppWidget().fixPadding * 0.5),
    height: 78.0,
    width: double.maxFinite,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: AssetImage(itemData['image']?.toString() ?? ''),
        fit: BoxFit.cover,
      ),
    ),
    alignment: Alignment.topRight,
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
          itemData['isFavorite'] == true
              ? CupertinoIcons.heart_fill
              : CupertinoIcons.heart,
          color: AppWidget().whiteColor,
          size: 20.0,
        ),
      ),
    ),
  );
}
