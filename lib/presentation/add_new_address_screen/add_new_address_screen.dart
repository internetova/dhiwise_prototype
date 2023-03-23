import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';
import 'package:groceryprototype/widgets/custom_checkbox.dart';
import 'package:groceryprototype/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends StatelessWidget {
  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  bool checkbox3 = false;

  bool checkbox4 = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16, top: 15, bottom: 14),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(
                    text: "Add New Address", margin: getMargin(left: 15))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Container(
                        width: double.maxFinite,
                        margin: getMargin(top: 10),
                        padding: getPadding(all: 48),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: countryController,
                                  hintText: "Country"),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: stateController,
                                  hintText: "State",
                                  margin: getMargin(top: 16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: cityController,
                                  hintText: "City",
                                  margin: getMargin(top: 16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: pincodeController,
                                  hintText: "Pincode",
                                  margin: getMargin(top: 16),
                                  textInputType: TextInputType.number),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: areaController,
                                  hintText: "Area",
                                  margin: getMargin(top: 16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: landmarkController,
                                  hintText: "Landmark",
                                  margin: getMargin(top: 16),
                                  textInputAction: TextInputAction.done),
                              Container(
                                  height: getVerticalSize(18),
                                  width: getHorizontalSize(297),
                                  margin: getMargin(top: 15),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: CustomCheckbox(
                                                alignment: Alignment.centerLeft,
                                                text: "Home",
                                                iconSize: getHorizontalSize(17),
                                                value: checkbox,
                                                fontStyle: CheckboxFontStyle
                                                    .MontserratRegular14,
                                                onChange: (value) {
                                                  checkbox = value;
                                                })),
                                        Align(
                                            alignment: Alignment.center,
                                            child: CustomCheckbox(
                                                alignment: Alignment.center,
                                                text: "Work / Office",
                                                iconSize: getHorizontalSize(17),
                                                value: checkbox1,
                                                fontStyle: CheckboxFontStyle
                                                    .MontserratRegular14,
                                                onChange: (value) {
                                                  checkbox1 = value;
                                                })),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: CustomCheckbox(
                                                alignment:
                                                    Alignment.centerRight,
                                                text: "Other",
                                                iconSize: getHorizontalSize(17),
                                                value: checkbox2,
                                                fontStyle: CheckboxFontStyle
                                                    .MontserratRegular14,
                                                onChange: (value) {
                                                  checkbox2 = value;
                                                })),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: CustomCheckbox(
                                                alignment: Alignment.centerLeft,
                                                width: getHorizontalSize(83),
                                                text: "Home",
                                                iconSize: getHorizontalSize(17),
                                                value: checkbox3,
                                                margin: getMargin(left: 25),
                                                fontStyle: CheckboxFontStyle
                                                    .MontserratRegular14,
                                                isRightCheck: true,
                                                onChange: (value) {
                                                  checkbox3 = value;
                                                })),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: CustomCheckbox(
                                                alignment: Alignment.centerLeft,
                                                width: getHorizontalSize(222),
                                                text: "Home",
                                                iconSize: getHorizontalSize(17),
                                                value: checkbox4,
                                                margin: getMargin(left: 25),
                                                fontStyle: CheckboxFontStyle
                                                    .MontserratRegular14,
                                                isRightCheck: true,
                                                onChange: (value) {
                                                  checkbox4 = value;
                                                }))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(50),
                                  width: getHorizontalSize(199),
                                  text: "Save",
                                  margin: getMargin(top: 29, bottom: 5),
                                  padding: ButtonPadding.PaddingAll14,
                                  alignment: Alignment.center)
                            ]))))));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
