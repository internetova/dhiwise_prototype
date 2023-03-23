import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListfortunericeItemWidget extends StatelessWidget {
  ListfortunericeItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            right: 16,
          ),
          color: ColorConstant.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
          ),
          child: Container(
            height: getVerticalSize(
              192,
            ),
            width: getHorizontalSize(
              162,
            ),
            padding: getPadding(
              top: 11,
              bottom: 11,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage92x86,
                          height: getVerticalSize(
                            92,
                          ),
                          width: getHorizontalSize(
                            86,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            "Fortune rice",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium16,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "\$3/kg",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMicrosoftNewTaiLueBold16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: getVerticalSize(
                      41,
                    ),
                    width: getHorizontalSize(
                      58,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMenuGreen500,
                          height: getVerticalSize(
                            41,
                          ),
                          width: getHorizontalSize(
                            58,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 7,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "37%",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratSemiBold14WhiteA700,
                                ),
                                Text(
                                  "off",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratSemiBold14WhiteA700,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
