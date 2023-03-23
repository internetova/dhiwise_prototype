import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class FruitsItemWidget extends StatelessWidget {
  FruitsItemWidget({this.goToDetails});

  VoidCallback? goToDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goToDetails!();
      },
      child: Container(
        padding: getPadding(
          left: 8,
          top: 12,
          right: 8,
          bottom: 12,
        ),
        decoration: AppDecoration.fillGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgFavorite,
              height: getVerticalSize(
                26,
              ),
              width: getHorizontalSize(
                25,
              ),
              alignment: Alignment.centerRight,
              margin: getMargin(
                right: 1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage52x71,
              height: getVerticalSize(
                79,
              ),
              width: getHorizontalSize(
                107,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Strawberry",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold18,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "(1 kg)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Row(
                children: [
                  Text(
                    "\$4",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold18,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgVolumeGreen500,
                    height: getSize(
                      18,
                    ),
                    width: getSize(
                      18,
                    ),
                    margin: getMargin(
                      left: 84,
                      top: 2,
                      bottom: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                    ),
                    child: Text(
                      "1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold18,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgPlusGreen500,
                    height: getSize(
                      18,
                    ),
                    width: getSize(
                      18,
                    ),
                    margin: getMargin(
                      left: 7,
                      top: 2,
                      bottom: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 14,
                bottom: 3,
              ),
              child: Row(
                children: [
                  Container(
                    width: getHorizontalSize(
                      82,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 5,
                      right: 10,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtFillGreen500.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                    ),
                    child: Text(
                      "Subscribe",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold12WhiteA700,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      78,
                    ),
                    margin: getMargin(
                      left: 14,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 5,
                      right: 8,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtOutlineGreen500.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                    ),
                    child: Text(
                      "Buy Once",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold12Green500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
