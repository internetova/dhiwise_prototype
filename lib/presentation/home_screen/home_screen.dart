import '../home_screen/widgets/listbackground_item_widget.dart';
import '../home_screen/widgets/listfortunerice_item_widget.dart';
import '../home_screen/widgets/listlanguage_item_widget.dart';
import '../home_screen/widgets/listsoftdrinks_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      width: getHorizontalSize(396),
                      margin: getMargin(left: 11, top: 16, right: 21),
                      padding: getPadding(top: 14, bottom: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHorizontalSize(6)),
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgFrame2), fit: BoxFit.cover)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomAppBar(
                                height: getVerticalSize(24),
                                leadingWidth: 57,
                                leading: AppbarImage(
                                    height: getSize(23),
                                    width: getSize(23),
                                    svgPath: ImageConstant.imgSearch,
                                    margin: getMargin(left: 34)),
                                title: Padding(
                                    padding: getPadding(left: 14),
                                    child: Text("Search products and brands",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratRegular14Gray50087)))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(left: 11, top: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(right: 21),
                                        padding:
                                            getPadding(left: 28, top: 10, right: 28, bottom: 10),
                                        decoration: AppDecoration.fillGreen500.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 7, top: 25, bottom: 27),
                                                  child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                            width: getHorizontalSize(99),
                                                            child: Text("Everyday\nEssentials",
                                                                maxLines: null,
                                                                textAlign: TextAlign.left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular20WhiteA700)),
                                                        Padding(
                                                            padding: getPadding(top: 7),
                                                            child: Text("10% off",
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style: AppStyle
                                                                    .txtMontserratBold20WhiteA700))
                                                      ])),
                                              CustomImageView(
                                                  imagePath: ImageConstant.imgImage126x199,
                                                  height: getVerticalSize(126),
                                                  width: getHorizontalSize(199),
                                                  margin: getMargin(bottom: 8))
                                            ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSwipe,
                                        height: getVerticalSize(5),
                                        width: getHorizontalSize(39),
                                        margin: getMargin(left: 179, top: 24)),
                                    GestureDetector(
                                        onTap: () {
                                          goToTopCategory(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(top: 24, right: 21),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Top Categories",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtMontserratBold20),
                                                  Padding(
                                                      padding: getPadding(top: 2, bottom: 2),
                                                      child: Text("Explore all",
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold16Green500))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(143),
                                        child: ListView.separated(
                                            padding: getPadding(top: 18, right: 9),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(height: getVerticalSize(20));
                                            },
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return ListbackgroundItemWidget();
                                            })),
                                    Padding(
                                        padding: getPadding(top: 22, right: 21),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Top Products",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratBold20),
                                              Padding(
                                                  padding: getPadding(top: 2, bottom: 2),
                                                  child: Text("Explore all",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtMontserratSemiBold16Green500))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(208),
                                            child: ListView.separated(
                                                padding: getPadding(top: 16),
                                                scrollDirection: Axis.horizontal,
                                                separatorBuilder: (context, index) {
                                                  return SizedBox(height: getVerticalSize(16));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ListfortunericeItemWidget();
                                                }))),
                                    Container(
                                        height: getVerticalSize(191),
                                        width: getHorizontalSize(396),
                                        margin: getMargin(top: 21),
                                        child: Stack(alignment: Alignment.bottomRight, children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(left: 24, right: 24),
                                                  decoration: AppDecoration.fillLightblue50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle.roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                            height: getVerticalSize(80),
                                                            width: getHorizontalSize(161),
                                                            margin: getMargin(top: 111),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant.cyan50,
                                                                borderRadius: BorderRadius.circular(
                                                                    getHorizontalSize(80))))
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgImage130x158,
                                              height: getVerticalSize(130),
                                              width: getHorizontalSize(158),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(bottom: 7)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 24),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Text("Get 25% Cashback",
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtMontserratBold24),
                                                        Padding(
                                                            padding: getPadding(top: 8),
                                                            child: Text("on all baby products",
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular14Teal40001)),
                                                        CustomButton(
                                                            height: getVerticalSize(33),
                                                            width: getHorizontalSize(129),
                                                            text: "Shop Now",
                                                            margin: getMargin(top: 46),
                                                            fontStyle: ButtonFontStyle
                                                                .MontserratSemiBold16)
                                                      ])))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 23, right: 21),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Deals of the week",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratBold20),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text("Explore all",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtMontserratSemiBold16Green500))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(185),
                                            child: ListView.separated(
                                                padding: getPadding(top: 20),
                                                scrollDirection: Axis.horizontal,
                                                separatorBuilder: (context, index) {
                                                  return SizedBox(height: getVerticalSize(16));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ListsoftdrinksItemWidget();
                                                }))),
                                    Padding(
                                        padding: getPadding(top: 17, right: 21),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Featured Items",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtMontserratBold20),
                                              Padding(
                                                  padding: getPadding(top: 3, bottom: 1),
                                                  child: Text("Explore all",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtMontserratSemiBold16Green500))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(207),
                                            child: ListView.separated(
                                                padding: getPadding(top: 16),
                                                scrollDirection: Axis.horizontal,
                                                separatorBuilder: (context, index) {
                                                  return SizedBox(height: getVerticalSize(16));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ListlanguageItemWidget();
                                                })))
                                  ]))))
                ])),
            bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  goToTopCategory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.exploreScreen);
  }
}
