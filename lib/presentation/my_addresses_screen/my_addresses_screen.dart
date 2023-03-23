import '../my_addresses_screen/widgets/myaddresses_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MyAddressesScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(59),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(
                    text: "My Addresses", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 8),
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 23),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapRowplus(context);
                              },
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlusGreen50024x24,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 2)),
                                Padding(
                                    padding: getPadding(left: 7),
                                    child: Text("Add New Address",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratSemiBold22))
                              ])),
                          Padding(
                              padding: getPadding(top: 24),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(24));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return MyaddressesItemWidget();
                                  }))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapRowplus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewAddressScreen);
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
