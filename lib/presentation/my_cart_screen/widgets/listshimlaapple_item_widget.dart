import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListshimlaappleItemWidget extends StatelessWidget {
  ListshimlaappleItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        396,
      ),
      padding: getPadding(
        left: 19,
        top: 12,
        right: 19,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgFrame2,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 3,
              bottom: 3,
            ),
            color: ColorConstant.gray50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10,
                ),
              ),
            ),
            child: Container(
              height: getSize(
                89,
              ),
              width: getSize(
                89,
              ),
              padding: getPadding(
                left: 16,
                top: 25,
                right: 16,
                bottom: 25,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage38x57,
                    height: getVerticalSize(
                      38,
                    ),
                    width: getHorizontalSize(
                      57,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 1,
              bottom: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Shimla Apple",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRegular18Gray800,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "1 kg",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular14Gray60004,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "\$2",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHelveticaBold18,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          "\$3.25",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHelvetica18.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 29,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClose,
                  height: getSize(
                    12,
                  ),
                  width: getSize(
                    12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 52,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVolumeGreen500,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                        ),
                        child: Text(
                          "1",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratSemiBold24,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlusGreen500,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          left: 16,
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
