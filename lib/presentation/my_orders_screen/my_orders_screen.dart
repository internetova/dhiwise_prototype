import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';

class MyOrdersScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            48,
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
              bottom: 2,
            ),
          ),
          title: AppbarTitle(
            text: "My Orders",
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 22,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Order History",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold22Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                      bottom: 106,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFrameGreen500,
                          height: getVerticalSize(
                            626,
                          ),
                          width: getHorizontalSize(
                            18,
                          ),
                          margin: getMargin(
                            top: 6,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            bottom: 45,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 17,
                                  top: 35,
                                  right: 17,
                                  bottom: 35,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9000f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage48x57,
                                      height: getVerticalSize(
                                        48,
                                      ),
                                      width: getHorizontalSize(
                                        57,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        bottom: 14,
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        55,
                                      ),
                                      width: getHorizontalSize(
                                        53,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 5,
                                        bottom: 10,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage79x791,
                                            height: getVerticalSize(
                                              54,
                                            ),
                                            width: getHorizontalSize(
                                              52,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              55,
                                            ),
                                            width: getHorizontalSize(
                                              53,
                                            ),
                                            text: "+1",
                                            variant:
                                                ButtonVariant.FillGray300d8,
                                            shape: ButtonShape
                                                .MontserratSemiBold16Green500,
                                            padding: ButtonPadding.PaddingAll11,
                                            fontStyle: ButtonFontStyle
                                                .MontserratSemiBold2661,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 26,
                                        right: 35,
                                        bottom: 13,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Arrives Tomorrow",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16Black900,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 16,
                                            ),
                                            child: Text(
                                              "7 AM -  PM",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular16Black900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                      height: getVerticalSize(
                                        36,
                                      ),
                                      width: getHorizontalSize(
                                        145,
                                      ),
                                      text: "View order details",
                                      variant: ButtonVariant.OutlineGreen500,
                                      shape: ButtonShape
                                          .MontserratSemiBold16Green500,
                                      fontStyle:
                                          ButtonFontStyle.MontserratSemiBold14,
                                    ),
                                    CustomButton(
                                      height: getVerticalSize(
                                        36,
                                      ),
                                      width: getHorizontalSize(
                                        120,
                                      ),
                                      text: "Track Order",
                                      margin: getMargin(
                                        left: 102,
                                      ),
                                      shape: ButtonShape
                                          .MontserratSemiBold16Green500,
                                      fontStyle: ButtonFontStyle
                                          .MontserratSemiBold14WhiteA700,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Edit Order",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold14Green500
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 212,
                                      ),
                                      child: Text(
                                        "Get Invoice",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold14Green500
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 23,
                                ),
                                padding: getPadding(
                                  left: 16,
                                  top: 24,
                                  right: 16,
                                  bottom: 24,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9000f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage55x59,
                                      height: getVerticalSize(
                                        55,
                                      ),
                                      width: getHorizontalSize(
                                        59,
                                      ),
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        55,
                                      ),
                                      width: getHorizontalSize(
                                        53,
                                      ),
                                      margin: getMargin(
                                        left: 15,
                                        top: 1,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage79x791,
                                            height: getVerticalSize(
                                              54,
                                            ),
                                            width: getHorizontalSize(
                                              52,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              55,
                                            ),
                                            width: getHorizontalSize(
                                              53,
                                            ),
                                            text: "+1",
                                            variant:
                                                ButtonVariant.FillGray300d8,
                                            shape: ButtonShape
                                                .MontserratSemiBold16Green500,
                                            padding: ButtonPadding.PaddingAll11,
                                            fontStyle: ButtonFontStyle
                                                .MontserratSemiBold2661,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 27,
                                        top: 17,
                                        right: 23,
                                        bottom: 18,
                                      ),
                                      child: Text(
                                        "Delivered on 23 oct",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold16Black900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                      height: getVerticalSize(
                                        36,
                                      ),
                                      width: getHorizontalSize(
                                        145,
                                      ),
                                      text: "View order details",
                                      variant: ButtonVariant.OutlineGreen500,
                                      shape: ButtonShape
                                          .MontserratSemiBold16Green500,
                                      fontStyle:
                                          ButtonFontStyle.MontserratSemiBold14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 141,
                                        top: 9,
                                        bottom: 8,
                                      ),
                                      child: Text(
                                        "Get Invoice",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold14Green500
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 24,
                                ),
                                padding: getPadding(
                                  left: 33,
                                  top: 14,
                                  right: 33,
                                  bottom: 14,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9000f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage76x29,
                                      height: getVerticalSize(
                                        76,
                                      ),
                                      width: getHorizontalSize(
                                        29,
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        55,
                                      ),
                                      width: getHorizontalSize(
                                        53,
                                      ),
                                      margin: getMargin(
                                        left: 29,
                                        top: 11,
                                        bottom: 10,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage79x791,
                                            height: getVerticalSize(
                                              54,
                                            ),
                                            width: getHorizontalSize(
                                              52,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              55,
                                            ),
                                            width: getHorizontalSize(
                                              53,
                                            ),
                                            text: "+1",
                                            variant:
                                                ButtonVariant.FillGray300d8,
                                            shape: ButtonShape
                                                .MontserratSemiBold16Green500,
                                            padding: ButtonPadding.PaddingAll11,
                                            fontStyle: ButtonFontStyle
                                                .MontserratSemiBold2661,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 28,
                                        top: 26,
                                        right: 7,
                                        bottom: 29,
                                      ),
                                      child: Text(
                                        "Delivered on 15 oct",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold16Black900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                      height: getVerticalSize(
                                        36,
                                      ),
                                      width: getHorizontalSize(
                                        145,
                                      ),
                                      text: "View order details",
                                      variant: ButtonVariant.OutlineGreen500,
                                      shape: ButtonShape
                                          .MontserratSemiBold16Green500,
                                      fontStyle:
                                          ButtonFontStyle.MontserratSemiBold14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 141,
                                        top: 9,
                                        bottom: 8,
                                      ),
                                      child: Text(
                                        "Get Invoice",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold14Green500
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
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
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
