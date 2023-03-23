import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListsoftdrinksItemWidget extends StatelessWidget {
  ListsoftdrinksItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 31,
            top: 13,
            right: 31,
            bottom: 13,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage81x92,
                height: getVerticalSize(
                  80,
                ),
                width: getHorizontalSize(
                  92,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Soft drinks",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold16Gray800,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "Upto 40% off",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold12,
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
