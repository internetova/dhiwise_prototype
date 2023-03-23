import '../my_subscription_screen/widgets/listcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_drop_down.dart';

class MySubscriptionScreen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
            onTap: () => Navigator.of(context).pop(),
          ),
          title: AppbarTitle(
            text: "My Subscription",
            margin: getMargin(
              left: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomDropDown(
                  focusNode: FocusNode(),
                  icon: Container(
                    margin: getMargin(
                      left: 30,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray800,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                    ),
                  ),
                  hintText: "Subscription -Weekly",
                  margin: getMargin(
                    left: 16,
                    top: 14,
                    right: 16,
                  ),
                  variant: DropDownVariant.FillWhiteA700,
                  padding: DropDownPadding.PaddingT15,
                  fontStyle: DropDownFontStyle.MontserratSemiBold16,
                  items: dropdownItemList,
                  onChanged: (value) {},
                ),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 24,
                      right: 12,
                      bottom: 24,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Today ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold18Gray800,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 2,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "(23 September 2021)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRegular18,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgCalendar,
                                  height: getVerticalSize(
                                    26,
                                  ),
                                  width: getHorizontalSize(
                                    23,
                                  ),
                                  margin: getMargin(
                                    left: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                            right: 4,
                          ),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  15,
                                ),
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ListcardItemWidget();
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIllustration,
                          height: getVerticalSize(
                            88,
                          ),
                          width: getHorizontalSize(
                            216,
                          ),
                          margin: getMargin(
                            top: 34,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                            bottom: 88,
                          ),
                          child: Text(
                            "Excited to serve you the best quality",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular15,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
