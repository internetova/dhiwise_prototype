import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 51, right: 51),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            goToLogin(context);
                          },
                          child: Padding(
                              padding: getPadding(right: 11),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup400,
                                        height: getVerticalSize(78),
                                        width: getHorizontalSize(53)),
                                    Padding(
                                        padding: getPadding(top: 20, bottom: 5),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "SG",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#040404"),
                                                      fontSize: getFontSize(
                                                          42.36911392211914),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#c4e538"),
                                                      fontSize: getFontSize(
                                                          42.36911392211914),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              TextSpan(
                                                  text: "Grocery",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#55ab60"),
                                                      fontSize: getFontSize(
                                                          42.36911392211914),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 8, top: 9, bottom: 5),
                          child: Text("Your needs in just one place",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(1.1))))
                    ]))));
  }

  goToLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginWithEmailIdScreen);
  }
}
