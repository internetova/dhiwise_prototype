import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_checkbox.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AboutUsScreen extends StatelessWidget {
  bool checkbox = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(46),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(text: "About", margin: getMargin(left: 15))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(top: 24),
                        padding: getPadding(top: 29, bottom: 29),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage177x396,
                                  height: getVerticalSize(177),
                                  width: getHorizontalSize(396)),
                              Container(
                                  width: getHorizontalSize(385),
                                  margin:
                                      getMargin(left: 16, top: 21, right: 26),
                                  child: Text(
                                      "What began little, with a solitary idea of a store that provides rebate and the basic thought of moving more for less, has become in the course of the last 10 years into the biggest retailer in this whole country.\r\n\r\nEvery week, about 265 million clients and individuals visit our in excess of 13,200 stores under 55 standards in 27 nations and eCommerce sites in 4 nations. With financial year 2018 income of \$500.3 billion, ‘Organization Name’ utilizes over 2.2 million partners around the world.\r\n\r\nSG Grocery keeps on being an innovator in support ability, corporate magnanimity and work opportunity. It’s everything part of our relentless promise to making openings and conveying an incentive to clients and networks the world over.\r\n\r\n ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Gray70002)),
                              Container(
                                  height: getVerticalSize(619),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 24, bottom: 98),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(496),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      453),
                                                              width: double
                                                                  .maxFinite,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .red50))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      right:
                                                                          16),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage172x198,
                                                                        height: getVerticalSize(
                                                                            172),
                                                                        width: getHorizontalSize(
                                                                            198)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "~ Why Choose us? ~",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratSemiBold22)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            274),
                                                                        margin: getMargin(
                                                                            top:
                                                                                13),
                                                                        child: Text(
                                                                            "We do not buy from the open \nmarket & traders.",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: AppStyle.txtMontserratSemiBold18Gray800011)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            389),
                                                                        margin: getMargin(
                                                                            top:
                                                                                22,
                                                                            right:
                                                                                6),
                                                                        child: Text(
                                                                            "We would like to give the best to our valuable customer that’s why our experts check quality of every products before we deliver it to you and promises to do further to keep faith constant.",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtMontserratRegular14Gray60006)),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 18, right: 25),
                                                                            child: Row(children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgQrcode, height: getSize(24), width: getSize(24)),
                                                                              Padding(padding: getPadding(left: 8, top: 5, bottom: 1), child: Text("100 % Organic Food", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Gray80001)),
                                                                              Spacer(),
                                                                              CustomImageView(svgPath: ImageConstant.imgMusicGreen50024x24, height: getSize(24), width: getSize(24)),
                                                                              Padding(padding: getPadding(left: 8, top: 5, bottom: 1), child: Text("Fast Delivery", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Gray80001))
                                                                            ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                12),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgUserGreen500, height: getSize(24), width: getSize(24), margin: getMargin(top: 4)),
                                                                              Padding(padding: getPadding(left: 8, top: 7, bottom: 2), child: Text("24/7 Service", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Gray80001)),
                                                                              Spacer(),
                                                                              CustomCheckbox(
                                                                                  text: "Secure Payment",
                                                                                  value: checkbox,
                                                                                  margin: getMargin(bottom: 4),
                                                                                  fontStyle: CheckboxFontStyle.MontserratSemiBold14Gray80001,
                                                                                  onChange: (value) {
                                                                                    checkbox = value;
                                                                                  })
                                                                            ]))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, right: 16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            goToPolicy(context);
                                                          },
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 18,
                                                                      top: 16,
                                                                      right: 18,
                                                                      bottom:
                                                                          16),
                                                              decoration: AppDecoration
                                                                  .fillGray10002
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "Privacy Policy",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratRegular16Gray60005)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getVerticalSize(
                                                                            23),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        margin: getMargin(
                                                                            right:
                                                                                1))
                                                                  ]))),
                                                      GestureDetector(
                                                          onTap: () {
                                                            goToTerms(context);
                                                          },
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 16),
                                                              padding:
                                                                  getPadding(
                                                                      left: 18,
                                                                      top: 17,
                                                                      right: 18,
                                                                      bottom:
                                                                          17),
                                                              decoration: AppDecoration
                                                                  .fillGray10002
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "Terms and services",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratRegular16Gray60005)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getVerticalSize(
                                                                            23),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        margin: getMargin(
                                                                            right:
                                                                                2))
                                                                  ])))
                                                    ])))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  goToPolicy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyPolicyScreen);
  }

  goToTerms(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.termsOfServicesScreen);
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
