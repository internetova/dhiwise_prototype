import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_image.dart';
import 'package:groceryprototype/widgets/app_bar/appbar_title.dart';
import 'package:groceryprototype/widgets/app_bar/custom_app_bar.dart';
import 'package:groceryprototype/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TermsOfServicesScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(13),
                    svgPath: ImageConstant.imgForwardWhiteA700,
                    margin: getMargin(left: 16, top: 1),
                    onTap: () => onBackPressed(context)),
                title: AppbarTitle(
                    text: "Terms of services", margin: getMargin(left: 16))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(top: 25),
                        padding: getPadding(
                            left: 15, top: 27, right: 15, bottom: 27),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Terms and Conditions\r",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMontserratSemiBold22Black900
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)),
                              Container(
                                  width: getHorizontalSize(393),
                                  margin: getMargin(top: 30),
                                  child: Text(
                                      "WELCOME TO ALL SG Grocery, LLC AND THANK YOU FOR REGISTERING WITH US! IT IS IMPORTANT THAT YOU REVIEW THIS AGREEMENT BECAUSE, BY ACCESSING THIS WEBSITE, BY PLACING AN ORDER WITH US BY TELEPHONE, EMAIL, FAX, OR THROUGH THIS WEBSITE, YOU ARE AGREEING TO THE TERMS AND CONDITIONS THAT GOVERN THE USE OF THE SITE AND THE TERMS UPON WHICH WE AGREE TO DELIVER TO YOU. ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold16Black9001
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))),
                              Container(
                                  width: getHorizontalSize(396),
                                  margin: getMargin(top: 38),
                                  child: Text(
                                      "By placing an order with us by telephone, fax, email, or online, you agree to the terms of this Agreement (the “Agreement”) which shall cover the terms of our deliveries to you and your use of our website. This Agreement is between you and All Seasons Grocery, LLC (the “Company” or “All Seasons Grocery”) that states the terms and conditions under which you may use the Site and receive deliveries from us. All Seasons Grocery is the owner of the following trademarks: All Seasons Grocery, www.allseasonsgrocery.com, and the All Seasons Grocery logo. This Agreement is binding on you whether you purchase from us via the telephone, email, fax, or our website.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Black9002)),
                              Padding(
                                  padding: getPadding(top: 28),
                                  child: Text("OUR DELIVERY SERVICE\r",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold18Black900
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))),
                              Container(
                                  width: getHorizontalSize(393),
                                  margin: getMargin(top: 28),
                                  child: Text(
                                      "When you place an order, we use all reasonable efforts to deliver to you at the time of your choosing or by 5:00 pm on the day of your arrival. Once you place your order by telephone, fax, email, or online, we will act as bailee for the ordered products. You can modify an existing order at any time up until the order leaves the store by calling our customer service number at 435-655-5071 or 435-655-1914. Please note that we reserve the right to refuse service to anyone. We reserve the right to change the cost of deliveries and/or our delivery fees at any time",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Black9002)),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("PRICE AND AVAILABILITY\r",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold18Black900
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))),
                              Container(
                                  width: getHorizontalSize(393),
                                  margin: getMargin(top: 25),
                                  child: Text(
                                      "From time to time, products you order may be unavailable. If we are unable to fulfill your entire order, we will make every reasonable effort to substitute the closest product. We do not set the prices for the items you select on your grocery list. We pay the prices that each individual store has already set.\r\n\r\nTo receive delivery, you do not need to be present to receive your order from our driver. In the case of bad weather or unforeseen delivery complications, deliveries may be delayed. We will make every effort to get your groceries to you by 5:00 pm on the date of your arrival.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Black9002)),
                              Padding(
                                  padding: getPadding(left: 2, top: 33),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "PAYMENT",
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#000000"),
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline)),
                                        TextSpan(
                                            text: "",
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#000000"),
                                                fontSize: getFontSize(22),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(396),
                                  margin: getMargin(top: 30, bottom: 193),
                                  child: Text(
                                      "We accept only credit/debit cards.  In the event your card is declined, we reserve the right to collect funds for any uncollected transactions owed us should a payment made via credit card be declined. If you fail to pay any fees or charges when due, we may charge such amount directly to the credit card identified in your Customer Account Information and we may suspend or terminate your access to our Service. You shall be responsible and liable for any fees, including but not limited to attorney’s fees and collection costs, that we may incur in our efforts to collect any unpaid balances from you.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14Black9002))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
