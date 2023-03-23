import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';
import 'package:groceryprototype/widgets/custom_button.dart';
import 'package:groceryprototype/widgets/custom_drop_down.dart';
import 'package:groceryprototype/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FaqScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList4 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList5 = ["Item One", "Item Two", "Item Three"];

  TextEditingController framesevenController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(text: "FAQ", margin: getMargin(left: 16))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(top: 22),
                        padding: getPadding(
                            left: 16, top: 24, right: 16, bottom: 24),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 26),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText: "Select Category",
                                  variant: DropDownVariant.FillGray10003,
                                  fontStyle:
                                      DropDownFontStyle.MontserratRegular18,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 26),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText: "Where do you Deliver?",
                                  margin: getMargin(top: 24),
                                  items: dropdownItemList1,
                                  onChanged: (value) {}),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 26),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText: "How can I order at SG Grocery? ",
                                  margin: getMargin(top: 16),
                                  items: dropdownItemList2,
                                  onChanged: (value) {}),
                              Container(
                                  width: getHorizontalSize(387),
                                  margin: getMargin(top: 21, right: 8),
                                  child: Text(
                                      "Placing an order is very simple.  Just register on the SG Grocery website/mobile application, pick your choice of products with a wide range of product selection in the online store and proceed to checkout or just call customer care and place an order. i.e. 1800-123-1947 ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Gray90001)),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 19),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText:
                                      "How do I know at what time I will receive my Delivery? ",
                                  margin: getMargin(top: 18),
                                  padding: DropDownPadding.PaddingT11,
                                  items: dropdownItemList3,
                                  onChanged: (value) {}),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 19),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText: "What is minimum order value?",
                                  margin: getMargin(top: 16),
                                  padding: DropDownPadding.PaddingT18_1,
                                  items: dropdownItemList4,
                                  onChanged: (value) {}),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 19),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack90001)),
                                  hintText:
                                      "What if I want to return something?",
                                  margin: getMargin(top: 16),
                                  padding: DropDownPadding.PaddingT18_1,
                                  items: dropdownItemList5,
                                  onChanged: (value) {}),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text(
                                      "Not Listed your question/query? ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold20Black900)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: framesevenController,
                                  hintText: "Write your Question/Query here",
                                  margin: getMargin(top: 14),
                                  padding: TextFormFieldPadding.PaddingT51,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratRegular14,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 6),
                              CustomButton(
                                  height: getVerticalSize(50),
                                  width: getHorizontalSize(208),
                                  text: "Submit",
                                  margin: getMargin(top: 30, bottom: 111),
                                  padding: ButtonPadding.PaddingAll14,
                                  alignment: Alignment.center)
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
