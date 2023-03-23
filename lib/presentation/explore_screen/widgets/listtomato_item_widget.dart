import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListtomatoItemWidget extends StatelessWidget {
  ListtomatoItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            left: 16,
            right: 16,
          ),
          padding: getPadding(
            left: 8,
            top: 6,
            right: 8,
            bottom: 6,
          ),
          decoration: AppDecoration.fillGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage13,
                height: getVerticalSize(
                  50,
                ),
                width: getHorizontalSize(
                  76,
                ),
                margin: getMargin(
                  top: 4,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Potato",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium12,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "1 kg",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "\$1",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold12,
                          ),
                        ),
                      ],
                    ),
                    CustomIconButton(
                      height: 23,
                      width: 24,
                      margin: getMargin(
                        left: 33,
                        top: 22,
                        bottom: 6,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgPlus,
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
