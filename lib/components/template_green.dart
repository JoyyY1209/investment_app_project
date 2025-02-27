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
              widget.data['roi']
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
                  Icons.star_border_purple500_rounded,
                  color: AppWidget().yellowColor,
                  size: 15.0,
                ),
                AppWidget().widthBox(AppWidget().fixPadding * 0.3),
                Expanded(
                  child: Text(
                    widget.data['risk']?.toString() ?? '0.0',
                    style: TextStyle(
                      color: widget.data['risk']=="Low"?AppWidget().primaryColor:widget.data['risk']=="Medi.."?AppWidget().yellowColor:AppWidget().redColor,
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                AppWidget().width5Space,
                Text(
                  "Tk ${(widget.data['pricePerShare'] as num?)?.toStringAsFixed(2) ?? '0.00'}",
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

Widget imageWidget(Map<String, dynamic> itemData, Function() onTap,double roi) {
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 20.0,
          width: 45,
          decoration: BoxDecoration(
            color: AppWidget().primaryColor.withOpacity(0.6),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: [
              AppWidget().width5Space,
              Expanded(
                child: Text(
                  roi.toString() ?? '0.0',
                  style: AppWidget.QuickSandWhiteSize(12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              AppWidget().widthBox(AppWidget().fixPadding * 0.3),
              Icon(
                Icons.percent_outlined,
                color: AppWidget().yellowColor,
                size: 14.0,
              ),
            ],
          ),
        ),

        GestureDetector(
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
      ],
    ),
  );
}
