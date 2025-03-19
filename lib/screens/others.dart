import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:investment_app_project/db/user_info.dart';
import 'package:investment_app_project/screens/edit_profile.dart';
import 'package:investment_app_project/screens/fav_investment.dart';
import 'package:investment_app_project/screens/help_support.dart';
import 'package:investment_app_project/screens/invested_project.dart';
import 'package:investment_app_project/screens/my_project.dart';
import 'package:investment_app_project/screens/notification.dart';
import 'package:investment_app_project/screens/payment_methos.dart';
import 'package:investment_app_project/screens/privacy_policy.dart';
import 'package:investment_app_project/screens/settings.dart';
import 'package:investment_app_project/screens/sign_up.dart';
import 'package:investment_app_project/screens/terms_conditions.dart';
import 'package:investment_app_project/widget/support_widget.dart';
import 'package:lottie/lottie.dart';

import 'bookmarked_news.dart';

class Others extends StatelessWidget {
  final Info=UserInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppWidget().whiteColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: AppWidget().whiteColor,
        title: Text("Profile",style: AppWidget.QuickSandGreenSizeBold(24),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            userInfo(),
            AppWidget().heightSpace,
            optionWidget(Majesticons.more_menu, "Invested Projects", () {
              Get.to(InvestedProject());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Majesticons.collection, "My Projects", () {
              Get.to(MyProjects());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Mdi.bell, "Notifications", () {
              Get.to(NotificationScreen());
            }),
            // AppWidget().heightSpace,
            // AppWidget().heightSpace,
            // optionWidget(Heroicons.map_pin_solid, "Address", () {
            //   Navigator.pushNamed(context, '/address');
            // }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Majesticons.creditcard, "Payment Methods", () {
              Get.to(PaymentMethodScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Mdi.bank, "Bank Details", () {
              Get.to(PaymentMethodScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Ion.person, "Nominee", () {
              Get.to(PaymentMethodScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Ion.heart_sharp, "Favourite Investments", () {
              Get.to(FavInvestmentList());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const BottomBar(index: 1),
              //   ),
              // );
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Ion.bookmark_sharp, "Bookmarked News", () {
              Get.to(BookmarkedNewsList());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const BottomBar(index: 1),
              //   ),
              // );
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(MaterialSymbols.settings, "Settings", () {
              Get.to(SettingsScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Ion.document_text, "Terms And Conditions", () {
              Get.to(TermsAndConditionScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(IconParkSolid.info, "Privacy Policy", () {
              Get.to(PrivacyPolicyScreen());
            }),
            AppWidget().heightSpace,
            AppWidget().heightSpace,
            optionWidget(Ic.baseline_headphones, "Help And Support", () {
              Get.to(HelpAndSupportScreen());
            }),
          ],
        ),
      ),
    );
  }

  Widget userInfo(){
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      width: AppWidget().screenWidth,
      //height: 100,
      decoration: BoxDecoration(
        color: AppWidget().greyColor.withOpacity(.1),
        border: Border.all(
          color: AppWidget().primaryColor.withOpacity(.5),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10.0),
              shape: BoxShape.circle,
              border: Border.all(
                color: AppWidget().primaryColor,
                width: .5,
              ),
            ),
            child: Lottie.asset("assets/splash_screen/splash_screen.json",fit: BoxFit.contain),
          ),
          AppWidget().widthSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Info.userInfo['fullName'],style: AppWidget.QuickSandBlackSizeBold(16),),
                AppWidget().height5Space,
                Text(Info.userInfo['mail'],style: AppWidget.QuickSandGreySize(16),),
              ],
            ),
          ),
          AppWidget().widthSpace,
          GestureDetector(
            onTap: () {
              Get.to(EditProfile());
            },
            child: Container(
              height: 30.0,
              width: 30.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppWidget().primaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              alignment: Alignment.center,
              child: Iconify(
                MaterialSymbols.edit_rounded,
                color: AppWidget().whiteColor,
                size: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget optionWidget(String icon, String title, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.all(AppWidget().fixPadding),
        decoration: BoxDecoration(
          color: AppWidget().greyColor.withOpacity(0),
          border: Border.all(
            color: AppWidget().primaryColor.withOpacity(.4),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: AppWidget().boxShadow2,
        ),
        child: Row(
          children: [
            Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: AppWidget().primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              alignment: Alignment.center,
              child: Iconify(
                icon,
                size: 20.0,
                color: AppWidget().primaryColor,
              ),
            ),
            AppWidget().widthSpace,
            Expanded(
              child: Text(
                title,
                style: AppWidget.QuickSandBlack87SizeBold(14),
              ),
            ),
            AppWidget().widthSpace,
            Icon(
              Icons.arrow_forward_ios,
              color: AppWidget().blackColor,
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}
