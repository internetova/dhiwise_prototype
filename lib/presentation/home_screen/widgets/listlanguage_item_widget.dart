import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListlanguageItemWidget extends StatelessWidget {
  ListlanguageItemWidget();

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
            left: 8,
            top: 14,
            right: 8,
            bottom: 14,
          ),
          decoration: AppDecoration.fillDeeporange50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage84x126,
                height: getVerticalSize(
                  82,
                ),
                width: getHorizontalSize(
                  126,
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: getHorizontalSize(
                  128,
                ),
                margin: getMargin(
                  left: 1,
                  top: 2,
                ),
                child: Text(
                  "Granola \nPremium Almond ",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium14,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                  bottom: 2,
                ),
                child: Row(
                  children: [
                    Text(
                      "\$22.00",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold14Green500,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 54,
                      ),
                      child: Text(
                        "1 kg",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold14Gray800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
