import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class UserScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                centerTitle: true,
                title: AppbarSubtitle(
                    text: "Profile")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 2, right: 16, bottom: 2),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage79x79,
                          height: getSize(79),
                          width: getSize(79),
                          radius: BorderRadius.circular(getHorizontalSize(39)),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 135, top: 25),
                          child: Text("George D.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular20Black900)),
                      Padding(
                          padding: getPadding(left: 153, top: 6),
                          child: Text("@george31",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular14Gray80002)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(396),
                              margin: getMargin(top: 21),
                              padding: getPadding(
                                  left: 24, top: 21, right: 24, bottom: 21),
                              decoration: AppDecoration.fillGray10002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder22),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgFile,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(24),
                                          margin: getMargin(bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 18, top: 1),
                                          child: Text("My orders",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular18Gray60005))
                                    ]),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowoffer(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 31),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgOffer,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(24),
                                                  margin: getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20, top: 1),
                                                  child: Text(
                                                      "My Subscriptions",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular))
                                            ]))),
                                    GestureDetector(
                                        onTap: () {
                                          goToMyAddress(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 31),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(24),
                                                  margin: getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 19, top: 1),
                                                  child: Text("My Addresses",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular18Gray600))
                                            ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowmusic(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 31),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMusic,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(24),
                                                  margin: getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(left: 17),
                                                  child: Text("FAQ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular18Gray600))
                                            ]))),
                                    Padding(
                                        padding: getPadding(top: 31),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMusicGreen500,
                                              height: getVerticalSize(21),
                                              width: getHorizontalSize(24)),
                                          Padding(
                                              padding: getPadding(left: 18),
                                              child: Text("Contact Us",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular18Gray600))
                                        ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowinfo(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 31),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgInfo,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(24)),
                                              Padding(
                                                  padding: getPadding(left: 16),
                                                  child: Text("About",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular18Gray600))
                                            ]))),
                                    Padding(
                                        padding:
                                            getPadding(top: 32, bottom: 163),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFolder,
                                              height: getVerticalSize(21),
                                              width: getHorizontalSize(24),
                                              margin: getMargin(bottom: 3)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 18, top: 3),
                                              child: Text("Log Out",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular18Gray600))
                                        ]))
                                  ])))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapRowoffer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mySubscriptionScreen);
  }

  goToMyAddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAddressesScreen);
  }

  onTapRowmusic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  onTapRowinfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }
}
