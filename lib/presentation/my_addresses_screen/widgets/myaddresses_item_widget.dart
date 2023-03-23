import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class MyaddressesItemWidget extends StatelessWidget {
  MyaddressesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgRefresh,
          height: getSize(
            18,
          ),
          width: getSize(
            18,
          ),
          margin: getMargin(
            top: 50,
            bottom: 106,
          ),
        ),
        Container(
          margin: getMargin(
            left: 16,
          ),
          padding: getPadding(
            left: 24,
            top: 23,
            right: 24,
            bottom: 23,
          ),
          decoration: AppDecoration.outlineBlack9000f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 37,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: getVerticalSize(
                            20,
                          ),
                          width: getHorizontalSize(
                            19,
                          ),
                          margin: getMargin(
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                          ),
                          child: Text(
                            "Home",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold18Black900,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: getHorizontalSize(
                          201,
                        ),
                        margin: getMargin(
                          top: 20,
                        ),
                        child: Text(
                          "4517 Washington Ave. Manchester, Kentucky 39495",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular14Black900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  52,
                ),
                margin: getMargin(
                  left: 33,
                  bottom: 108,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
