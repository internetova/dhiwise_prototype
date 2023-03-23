import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/custom_button.dart';
import 'package:groceryprototype/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginWithEmailIdScreen extends StatelessWidget {
  TextEditingController group6022Controller = TextEditingController();

  TextEditingController group6023Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(all: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup400,
                                        height: getVerticalSize(53),
                                        width: getHorizontalSize(36)),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 13, bottom: 3),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "SG",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#040404"),
                                                      fontSize: getFontSize(
                                                          28.78927230834961),
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
                                                          28.78927230834961),
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
                                                          28.78927230834961),
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(152),
                                  width: getHorizontalSize(157),
                                  margin: getMargin(top: 50),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: getHorizontalSize(157),
                                                margin: getMargin(bottom: 18),
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup1008),
                                                        fit: BoxFit.cover)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgUser,
                                                          height:
                                                              getVerticalSize(
                                                                  21),
                                                          width:
                                                              getHorizontalSize(
                                                                  18),
                                                          margin: getMargin(
                                                              top: 47,
                                                              bottom: 61)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  122),
                                                          width:
                                                              getHorizontalSize(
                                                                  73),
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLock,
                                                                    height:
                                                                        getVerticalSize(
                                                                            36),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            30),
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(106),
                                                                        width: getHorizontalSize(53),
                                                                        padding: getPadding(left: 2, top: 3, right: 2, bottom: 3),
                                                                        decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup804), fit: BoxFit.cover)),
                                                                        child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMobile,
                                                                              height: getVerticalSize(99),
                                                                              width: getHorizontalSize(48),
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 6, right: 3, bottom: 2),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.center,
                                                                                        child: Container(
                                                                                            height: getVerticalSize(5),
                                                                                            width: getHorizontalSize(4),
                                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                                              CustomImageView(svgPath: ImageConstant.imgVector, height: getVerticalSize(5), width: getHorizontalSize(4), alignment: Alignment.center),
                                                                                              CustomImageView(svgPath: ImageConstant.imgVectorBlack90001, height: getVerticalSize(5), width: getHorizontalSize(4), alignment: Alignment.center)
                                                                                            ]))),
                                                                                    Align(alignment: Alignment.center, child: Container(height: getVerticalSize(2), width: getHorizontalSize(17), margin: getMargin(top: 1), decoration: BoxDecoration(color: ColorConstant.whiteA7006c))),
                                                                                    Container(height: getVerticalSize(1), width: getHorizontalSize(9), margin: getMargin(top: 6), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                    Container(
                                                                                        height: getVerticalSize(6),
                                                                                        width: getHorizontalSize(37),
                                                                                        margin: getMargin(top: 2),
                                                                                        child: Stack(alignment: Alignment.topLeft, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgMenu, height: getVerticalSize(6), width: getHorizontalSize(37), alignment: Alignment.center),
                                                                                          Align(alignment: Alignment.topLeft, child: Container(height: getVerticalSize(1), width: getHorizontalSize(17), margin: getMargin(left: 2, top: 2), decoration: BoxDecoration(color: ColorConstant.whiteA7006c)))
                                                                                        ])),
                                                                                    Container(height: getVerticalSize(1), width: getHorizontalSize(9), margin: getMargin(top: 5), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                    Container(
                                                                                        height: getVerticalSize(6),
                                                                                        width: getHorizontalSize(37),
                                                                                        margin: getMargin(top: 2),
                                                                                        child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgMenuGray300, height: getVerticalSize(6), width: getHorizontalSize(37), alignment: Alignment.center),
                                                                                          Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(1), width: getHorizontalSize(17), margin: getMargin(left: 2), decoration: BoxDecoration(color: ColorConstant.whiteA7006c)))
                                                                                        ])),
                                                                                    Container(height: getVerticalSize(1), width: getHorizontalSize(9), margin: getMargin(top: 5), decoration: BoxDecoration(color: ColorConstant.black90063)),
                                                                                    Container(
                                                                                        height: getVerticalSize(6),
                                                                                        width: getHorizontalSize(37),
                                                                                        margin: getMargin(top: 2),
                                                                                        child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgMenuGray3006x37, height: getVerticalSize(6), width: getHorizontalSize(37), alignment: Alignment.center),
                                                                                          Align(
                                                                                              alignment: Alignment.bottomLeft,
                                                                                              child: Container(
                                                                                                  height: getVerticalSize(1),
                                                                                                  width: getHorizontalSize(20),
                                                                                                  margin: getMargin(left: 2, bottom: 2),
                                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                    CustomImageView(svgPath: ImageConstant.imgVectorGreen500, height: getSize(1), width: getSize(1), alignment: Alignment.topLeft),
                                                                                                    Align(
                                                                                                        alignment: Alignment.centerLeft,
                                                                                                        child: Padding(
                                                                                                            padding: getPadding(left: 2),
                                                                                                            child: Row(children: [
                                                                                                              CustomImageView(svgPath: ImageConstant.imgVectorGreen5001x1, height: getSize(1), width: getSize(1)),
                                                                                                              CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1), width: getSize(1)),
                                                                                                              CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1), width: getSize(1)),
                                                                                                              CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1), width: getSize(1)),
                                                                                                              CustomImageView(svgPath: ImageConstant.imgVectorGreen500, height: getSize(1), width: getSize(1))
                                                                                                            ]))),
                                                                                                    CustomImageView(svgPath: ImageConstant.imgVector1, height: getSize(1), width: getSize(1), alignment: Alignment.centerRight, margin: getMargin(right: 4)),
                                                                                                    CustomImageView(svgPath: ImageConstant.imgVectorGreen500, height: getSize(1), width: getSize(1), alignment: Alignment.centerRight, margin: getMargin(right: 2)),
                                                                                                    CustomImageView(svgPath: ImageConstant.imgVectorGreen500, height: getSize(1), width: getSize(1), alignment: Alignment.centerRight),
                                                                                                    CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(1), width: getHorizontalSize(20), alignment: Alignment.center)
                                                                                                  ])))
                                                                                        ])),
                                                                                    Container(
                                                                                        height: getVerticalSize(18),
                                                                                        width: getHorizontalSize(28),
                                                                                        margin: getMargin(left: 3, top: 10),
                                                                                        child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(8), width: getHorizontalSize(28), alignment: Alignment.topCenter),
                                                                                          Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(12), margin: getMargin(left: 5), child: Text("Log in", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular698)))
                                                                                        ]))
                                                                                  ])))
                                                                        ])))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                width: getHorizontalSize(113),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .blueGray900))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCharacter,
                                            height: getVerticalSize(100),
                                            width: getHorizontalSize(52),
                                            alignment: Alignment.bottomLeft,
                                            margin: getMargin(left: 30))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 41),
                              child: Text("Login",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold24)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text("Email Id",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium18)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group6022Controller,
                              hintText: "Enter Your Email Id",
                              margin: getMargin(top: 13),
                              variant: TextFormFieldVariant.OutlineGray500,
                              padding: TextFormFieldPadding.PaddingT17,
                              fontStyle:
                                  TextFormFieldFontStyle.MontserratRegular16,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium18)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group6023Controller,
                              hintText: "Enter Your Password",
                              margin: getMargin(top: 13),
                              variant: TextFormFieldVariant.OutlineGray500,
                              padding: TextFormFieldPadding.PaddingT17,
                              fontStyle:
                                  TextFormFieldFontStyle.MontserratRegular16,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "Login",
                              margin: getMargin(top: 24),
                              variant: ButtonVariant.OutlineIndigoA20033,
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll14,
                              onTap: () => onTapLoginOne(context)),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 11, bottom: 7),
                                        child: SizedBox(
                                            width: getHorizontalSize(122),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant
                                                    .blueGray400))),
                                    Text("Or continue with",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratRegular16),
                                    Padding(
                                        padding: getPadding(top: 11, bottom: 7),
                                        child: SizedBox(
                                            width: getHorizontalSize(122),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.blueGray400)))
                                  ])),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 38,
                                            top: 9,
                                            right: 38,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .outlineGreen500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGoogle,
                                                  height: getSize(32),
                                                  width: getSize(32)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 6,
                                                      bottom: 3),
                                                  child: Text("Google",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium18Gray700))
                                            ])),
                                    Container(
                                        padding: getPadding(
                                            left: 28,
                                            top: 9,
                                            right: 28,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .outlineGreen500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFacebook,
                                                  height: getVerticalSize(32),
                                                  width: getHorizontalSize(33)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 4,
                                                      bottom: 5),
                                                  child: Text("Facebook",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium18Gray700))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 31, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t You Have an Account? ",
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#848fad"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "Register",
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#14171f"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapLoginOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
