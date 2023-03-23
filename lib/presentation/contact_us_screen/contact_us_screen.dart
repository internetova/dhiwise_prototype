import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';
import 'package:groceryprototype/widgets/custom_phone_number.dart';
import 'package:groceryprototype/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ContactUsScreen extends StatelessWidget {
  TextEditingController frameoneController = TextEditingController();

  TextEditingController frametwoController = TextEditingController();

  TextEditingController framethreeController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController framefiveController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(
                    text: "Contact Us", margin: getMargin(left: 16))),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(top: 24),
                        padding: getPadding(
                            left: 15, top: 30, right: 15, bottom: 30),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 21,
                                          top: 15,
                                          right: 21,
                                          bottom: 15),
                                      decoration: AppDecoration
                                          .outlineBlack9000c
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Get In Touch !",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold22Black900),
                                            Container(
                                                width: getHorizontalSize(353),
                                                margin: getMargin(
                                                    top: 30, bottom: 8),
                                                child: Text(
                                                    "One of our workspace experts will reach out to you based on your communicatoin preferences.",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtMontserratRegular14Gray600))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("Your Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold22Black900)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frameoneController,
                                  hintText: "First name",
                                  margin: getMargin(top: 11),
                                  padding: TextFormFieldPadding.PaddingT21),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frametwoController,
                                  hintText: "Last name",
                                  margin: getMargin(top: 16),
                                  padding: TextFormFieldPadding.PaddingT21),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: framethreeController,
                                  hintText: "Email",
                                  margin: getMargin(top: 16),
                                  padding: TextFormFieldPadding.PaddingT21,
                                  textInputType: TextInputType.emailAddress),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: CustomPhoneNumber(
                                      country: selectedCountry,
                                      controller: phoneNumberController,
                                      onTap: (Country country) {
                                        selectedCountry = country;
                                      })),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: framefiveController,
                                  hintText: "Additional Info",
                                  margin: getMargin(top: 16),
                                  padding: TextFormFieldPadding.PaddingT71,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 7),
                              CustomButton(
                                  height: getVerticalSize(50),
                                  width: getHorizontalSize(200),
                                  text: "Send Message",
                                  margin: getMargin(top: 30),
                                  padding: ButtonPadding.PaddingAll14,
                                  alignment: Alignment.center),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "2464 Royal Ln. Mesa, New Jersey 45463",
                                  margin: getMargin(top: 24),
                                  variant: ButtonVariant.FillGray10002,
                                  shape: ButtonShape.RoundedBorder10,
                                  padding: ButtonPadding.PaddingT21,
                                  fontStyle:
                                      ButtonFontStyle.MontserratSemiBold14,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgLocationGreen500))),
                              Container(
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 38, top: 13, right: 38, bottom: 13),
                                  decoration: AppDecoration.fillGray10002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCall,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 4, bottom: 4)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 9, bottom: 6),
                                            child: Text("+1 (773) 600-4875",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold14Green500)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 15),
                                            child: Text(",",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold14Green500)),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 9, bottom: 6),
                                            child: Text("+1 (773) 600-4866",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold14Green500))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "sggrocery@gmail.com",
                                  margin: getMargin(top: 24, bottom: 97),
                                  variant: ButtonVariant.FillGray10002,
                                  shape: ButtonShape.RoundedBorder10,
                                  padding: ButtonPadding.PaddingT21,
                                  fontStyle:
                                      ButtonFontStyle.MontserratSemiBold14,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgMail)))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
