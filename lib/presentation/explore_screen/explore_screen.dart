import '../explore_screen/widgets/listjaggerypowder_item_widget.dart';
import '../explore_screen/widgets/listparlerusk_item_widget.dart';
import '../explore_screen/widgets/listplus_item_widget.dart';
import '../explore_screen/widgets/liststrawberry_item_widget.dart';
import '../explore_screen/widgets/listtomato_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ExploreScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(46),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForward,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: () => onBackPressed(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Explore")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 15, top: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Groceries",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold20),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 1),
                                            child: Text("See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold16))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(160),
                                      child: ListView.separated(
                                          padding: getPadding(top: 16),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return ListjaggerypowderItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Vegetables",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold20),
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 3),
                                            child: Text("See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold16))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(157),
                                      child: ListView.separated(
                                          padding: getPadding(top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return ListtomatoItemWidget();
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    goToFruits(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 22, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Fruits",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold20),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeealltwo(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 1),
                                                    child: Text("See all",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratBold16)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(160),
                                      child: ListView.separated(
                                          padding: getPadding(top: 16),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return ListstrawberryItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 24, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Dairy Products",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold20),
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 3),
                                            child: Text("See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold16))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(161),
                                      child: ListView.separated(
                                          padding: getPadding(top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return ListplusItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Bakery Items",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratBold20),
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 3),
                                            child: Text("See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold16))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(157),
                                      child: ListView.separated(
                                          padding: getPadding(top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return ListparleruskItemWidget();
                                          })))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  goToFruits(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fruitsScreen);
  }

  onTapTxtSeealltwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fruitsScreen);
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
