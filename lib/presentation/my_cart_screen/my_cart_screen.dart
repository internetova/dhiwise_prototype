import '../my_cart_screen/widgets/listminimize_item_widget.dart';
import '../my_cart_screen/widgets/listshimlaapple_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';

class MyCartScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            46,
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "My Cart",
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 25,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tomorrow, 7 AM - 9 PM",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold20,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgIcon,
                        height: getVerticalSize(
                          5,
                        ),
                        width: getHorizontalSize(
                          11,
                        ),
                        margin: getMargin(
                          left: 9,
                          top: 9,
                          bottom: 10,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListshimlaappleItemWidget();
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListminimizeItemWidget();
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        251,
                      ),
                      margin: getMargin(
                        top: 23,
                      ),
                      child: Text(
                        "Promo code can be applied on payment screen",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtMontserratSemiBold16Green30099,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Text(
                      "Payment details",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold22,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 20,
                      ),
                      decoration: AppDecoration.outlineBlack9000c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 10,
                              right: 25,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total MRP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular16Gray500021,
                                ),
                                Text(
                                  "\$9.97",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular16Gray500021,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(
                                20,
                              ),
                              endIndent: getHorizontalSize(
                                20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 7,
                              right: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Discount",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRegular16Gray500021,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "\$0.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRegular16Gray500021,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(
                                19,
                              ),
                              endIndent: getHorizontalSize(
                                20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 9,
                              right: 28,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Shipping Charges",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRegular16Gray500021,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Free",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRegular16Gray500021,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 8,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 6,
                              right: 20,
                              bottom: 6,
                            ),
                            decoration: AppDecoration.fillGreen50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold18Gray80001,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    right: 2,
                                  ),
                                  child: Text(
                                    "\$ 9.97",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold18Gray80001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    width: getHorizontalSize(
                      200,
                    ),
                    text: "Checkout",
                    margin: getMargin(
                      top: 30,
                    ),
                    padding: ButtonPadding.PaddingAll14,
                    alignment: Alignment.center,
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
