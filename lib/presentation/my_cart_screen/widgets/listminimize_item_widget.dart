import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListminimizeItemWidget extends StatelessWidget {
  ListminimizeItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        396,
      ),
      padding: getPadding(
        left: 13,
        top: 10,
        right: 13,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup952,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgMinimize,
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              11,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FLAT",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold14,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "50% off",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold20WhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "on your first order",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular12WhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "Use coupon code to get OFFER",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular12WhiteA700,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgMinimize,
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              11,
            ),
            margin: getMargin(
              left: 26,
            ),
          ),
          Container(
            height: getVerticalSize(
              85,
            ),
            width: getHorizontalSize(
              84,
            ),
            margin: getMargin(
              left: 27,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMinimize,
                  height: getVerticalSize(
                    85,
                  ),
                  width: getHorizontalSize(
                    11,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: getMargin(
                    left: 3,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMinimize,
                  height: getVerticalSize(
                    85,
                  ),
                  width: getHorizontalSize(
                    11,
                  ),
                  alignment: Alignment.centerRight,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "code",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular14WhiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "GETFIRST",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold16WhiteA700,
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
    );
  }
}
