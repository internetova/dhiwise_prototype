import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

class MyWalletScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            62,
          ),
          leadingWidth: 29,
          leading: AppbarImage(
            height: getVerticalSize(
              26,
            ),
            width: getHorizontalSize(
              13,
            ),
            svgPath: ImageConstant.imgForwardWhiteA700,
            margin: getMargin(
              left: 16,
              top: 13,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "My Wallet",
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          child: Container(
            width: double.maxFinite,
            margin: getMargin(
              top: 8,
            ),
            padding: getPadding(
              left: 16,
              top: 31,
              right: 16,
              bottom: 31,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "My Balance",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold22Black900,
                ),
                Padding(
                  padding: getPadding(
                    top: 14,
                  ),
                  child: Text(
                    "\$20",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold24,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "Use to pay 100% on any orders",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular18Gray50003,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 28,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFrameGreen500,
                        height: getVerticalSize(
                          456,
                        ),
                        width: getHorizontalSize(
                          18,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "17 Oct, 2021",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular18Black900,
                            ),
                            Container(
                              margin: getMargin(
                                top: 11,
                              ),
                              padding: getPadding(
                                left: 20,
                                top: 19,
                                right: 20,
                                bottom: 19,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9000f1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 3,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cashback Received",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16Black900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Transaction Id : 25917892598342",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRegular14Bluegray40001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 74,
                                      top: 14,
                                      right: 4,
                                      bottom: 15,
                                    ),
                                    child: Text(
                                      "\$2",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 24,
                              ),
                              child: Text(
                                "12 Oct, 2021",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRegular18Black900,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 11,
                              ),
                              padding: getPadding(
                                left: 20,
                                top: 21,
                                right: 20,
                                bottom: 21,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9000f1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Spent on order",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16Black900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 14,
                                          ),
                                          child: Text(
                                            "Transaction Id : 23423423245342",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRegular14Bluegray40001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 71,
                                      top: 17,
                                      right: 4,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "\$5",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold22DeeporangeA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 25,
                              ),
                              child: Text(
                                "05 Sept, 2021",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRegular18Black900,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 10,
                              ),
                              padding: getPadding(
                                left: 20,
                                top: 19,
                                right: 20,
                                bottom: 19,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9000f1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 3,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Caashback Recieved",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16Black900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Transaction Id :23289282638462",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRegular14Bluegray40001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 74,
                                      top: 14,
                                      right: 4,
                                      bottom: 15,
                                    ),
                                    child: Text(
                                      "\$3",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
