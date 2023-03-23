import '../fruits_screen/widgets/fruits_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class FruitsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 4),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                width: getHorizontalSize(
                                  140,
                                ),
                                text: "Fruits",
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
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 24),
                                      padding: getPadding(
                                          left: 16,
                                          top: 24,
                                          right: 16,
                                          bottom: 24),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL30),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 89),
                                                child: GridView.builder(
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                            mainAxisExtent:
                                                                getVerticalSize(
                                                                    237),
                                                            crossAxisCount: 2,
                                                            mainAxisSpacing:
                                                                getHorizontalSize(
                                                                    16),
                                                            crossAxisSpacing:
                                                                getHorizontalSize(
                                                                    16)),
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    itemCount: 8,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return FruitsItemWidget(
                                                          goToDetails: () =>
                                                              goToDetails(
                                                                  context));
                                                    }))
                                          ])))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  goToDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsScreen);
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
