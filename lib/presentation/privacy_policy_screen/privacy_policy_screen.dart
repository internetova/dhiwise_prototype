import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicyScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: () => onTapForward(context)),
                title: AppbarTitle(text: "Privacy Policy", margin: getMargin(left: 16))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(top: 22),
                        padding: getPadding(left: 15, top: 29, right: 15, bottom: 29),
                        decoration: AppDecoration.fillWhiteA700
                            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Privacy Policy",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold22Black900
                                      .copyWith(decoration: TextDecoration.underline)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 19),
                                      child: Text("Last updated on Nov,2021",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMontserratRegular16Gray600))),
                              Container(
                                  height: getVerticalSize(1400),
                                  width: getHorizontalSize(396),
                                  margin: getMargin(top: 30, bottom: 20),
                                  child: Stack(alignment: Alignment.center, children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(top: 0),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Information collected:",
                                                      style: TextStyle(
                                                          color: ColorConstant.black900,
                                                          fontSize: getFontSize(18),
                                                          fontFamily: 'Montserrat',
                                                          fontWeight: FontWeight.w600,
                                                          decoration: TextDecoration.underline)),
                                                  TextSpan(
                                                      text: "",
                                                      style: TextStyle(
                                                          color: ColorConstant.black900,
                                                          fontSize: getFontSize(18),
                                                          fontFamily: 'Montserrat',
                                                          fontWeight: FontWeight.w400))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(393),
                                              child: Text(
                                                  "SG Grocery is committed to protecting your privacy. This Privacy Policy explains our data processing practices and your options regarding the ways in which your personal data is used. If you have concerning your personal information or any questions please contact us to given email at  customercare@SGGrocery.us please note that the practices of SG grocery with respect to data collected and used by Grocery Factory only in connection with this website with links to this policy are governed by Grocery Factory privacy policy (\"Privacy Policy\") as amended from time to time and not the privacy policy in effect at the time the data was collected. Please regularly review our Privacy Policy. If you have objections to the Privacy Policy, you can immediately contact us.\r",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratRegular14Black9002)),
                                          Container(
                                              width: getHorizontalSize(396),
                                              margin: getMargin(top: 62),
                                              child: Text(
                                                  "SG grocery collects the details provided by you on registration together with information we learn about you from your use of our service and your visits to our website. We also collect information about the transactions you undertake including details of payment cards used. We may collect additional information in connectio n with your participation in any promotions or competitions offered by us and information you provide when giving us feedback or completing profile forms. We also monitor customer traffic patterns and site usage which enables us to improve the services we provide.\r\n \r\nUse of your information and your preferences: We will use your information to provide and personalize our service. We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from Grocery Factory and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratRegular14Black9002)),
                                          Container(
                                              width: getHorizontalSize(306),
                                              margin: getMargin(top: 17, right: 89),
                                              child: Text(
                                                  "Use of your information and your preferences:",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratSemiBold18Black9001
                                                      .copyWith(
                                                          decoration: TextDecoration.underline))),
                                          Container(
                                              width: getHorizontalSize(393),
                                              margin: getMargin(top: 22),
                                              child: Text(
                                                  " We will use your information to provide and personalize our service. We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from SG Groecery and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.\r",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratRegular14Black9002)),
                                          Padding(
                                              padding: getPadding(top: 29),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Legal Disclaimer:",
                                                        style: TextStyle(
                                                            color: ColorConstant.black900,
                                                            fontSize: getFontSize(18),
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w600,
                                                            decoration: TextDecoration.underline)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant.black900,
                                                            fontSize: getFontSize(18),
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w400))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Container(
                                              width: getHorizontalSize(391),
                                              margin: getMargin(top: 24, right: 4),
                                              child: Text(
                                                  "We reserve the right to disclose your personally identifiable information as required by law and when believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of SG Grocery in terms of use, or as otherwise required by law.",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratRegular14Black9002)),
                                          Padding(
                                              padding: getPadding(top: 22),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Changes in this Privacy Statement:",
                                                        style: TextStyle(
                                                            color: ColorConstant.black900,
                                                            fontSize: getFontSize(18),
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w600,
                                                            decoration: TextDecoration.underline)),
                                                    TextSpan(
                                                        text: " ",
                                                        style: TextStyle(
                                                            color: ColorConstant.black900,
                                                            fontSize: getFontSize(18),
                                                            fontFamily: 'Montserrat',
                                                            fontWeight: FontWeight.w400))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Container(
                                              width: getHorizontalSize(396),
                                              margin: getMargin(top: 15),
                                              child: Text(
                                                  "SG Grocery reserve the right to modify this privacy statement at any time, so please review it time to time. If we make material changes to this policy, we will notify you here.",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratRegular14Black9002))
                                        ])
                                  ]))
                            ])))),
            bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapForward(BuildContext context) {
    Navigator.pop(context);
  }
}
