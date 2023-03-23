import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListplusItemWidget extends StatelessWidget {
  ListplusItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
            bottom: 3,
          ),
          padding: getPadding(
            left: 7,
            top: 5,
            right: 7,
            bottom: 5,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage57x46,
                height: getVerticalSize(
                  54,
                ),
                width: getHorizontalSize(
                  46,
                ),
                margin: getMargin(
                  left: 23,
                  top: 8,
                ),
              ),
              Container(
                height: getVerticalSize(
                  52,
                ),
                width: getHorizontalSize(
                  98,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomIconButton(
                      height: 24,
                      width: 24,
                      margin: getMargin(
                        bottom: 6,
                      ),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "A2MATE milk",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium12,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 0,
                            ),
                            child: Text(
                              "0.5 ltr.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular12,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "\$2",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold12,
                            ),
                          ),
                        ],
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
