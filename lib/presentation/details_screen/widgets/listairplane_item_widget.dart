import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:groceryprototype/core/app_export.dart';

// ignore: must_be_immutable
class ListairplaneItemWidget extends StatelessWidget {
  ListairplaneItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
          bottom: 1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                114,
              ),
              width: getHorizontalSize(
                122,
              ),
              padding: getPadding(
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup921,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgAirplane,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage85x84,
                    height: getVerticalSize(
                      85,
                    ),
                    width: getHorizontalSize(
                      84,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Container(
              height: getVerticalSize(
                47,
              ),
              width: getHorizontalSize(
                122,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCard,
                    height: getVerticalSize(
                      47,
                    ),
                    width: getHorizontalSize(
                      122,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        bottom: 11,
                      ),
                      child: Text(
                        "Pinapple",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratBold16WhiteA700,
                      ),
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
