import '../details_screen/widgets/listairplane_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/custom_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          262,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getVerticalSize(
                                  185,
                                ),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: ColorConstant.green500,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                    bottomRight: Radius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage219x240,
                              height: getVerticalSize(
                                219,
                              ),
                              width: getHorizontalSize(
                                240,
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                            CustomButton(
                              width: getHorizontalSize(
                                140,
                              ),
                              text: "Details",
                              margin: getMargin(
                                left: 14,
                                top: 20,
                              ),
                              shape: ButtonShape.Square,
                              fontStyle: ButtonFontStyle.MontserratBold22,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 18,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.whiteA700,
                                    width: getHorizontalSize(
                                      2,
                                    ),
                                    strokeAlign: strokeAlignCenter,
                                  ),
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgForwardWhiteA700,
                                ),
                              ),
                              alignment: Alignment.topLeft,
                              onTap: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgSwipeGreen400,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          33,
                        ),
                        margin: getMargin(
                          top: 24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Green Apple",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold28,
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgVolumeGreen500,
                              height: getSize(
                                30,
                              ),
                              width: getSize(
                                30,
                              ),
                              margin: getMargin(
                                bottom: 4,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                bottom: 5,
                              ),
                              child: Text(
                                "1",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold24,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgPlusGreen500,
                              height: getSize(
                                30,
                              ),
                              width: getSize(
                                30,
                              ),
                              margin: getMargin(
                                left: 16,
                                bottom: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 14,
                          ),
                          child: Text(
                            "Special price",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 14,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$2",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHelveticaBold34,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                                bottom: 1,
                              ),
                              child: Text(
                                "(42% off)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 24,
                          ),
                          child: Text(
                            "Description",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(
                            376,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 10,
                            right: 35,
                          ),
                          child: Text(
                            "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular16Gray50002,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              height: getVerticalSize(
                                36,
                              ),
                              width: getHorizontalSize(
                                106,
                              ),
                              text: "Subscribe",
                              fontStyle: ButtonFontStyle.MontserratSemiBold16,
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                36,
                              ),
                              width: getHorizontalSize(
                                106,
                              ),
                              text: "Buy Once",
                              margin: getMargin(
                                left: 21,
                              ),
                              variant: ButtonVariant.OutlineGreen500,
                              fontStyle: ButtonFontStyle
                                  .MontserratSemiBold16Green500_1,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 22,
                          ),
                          child: Text(
                            "Related items",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold22,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          231,
                        ),
                        child: ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 25,
                            right: 15,
                            bottom: 44,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListairplaneItemWidget();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
