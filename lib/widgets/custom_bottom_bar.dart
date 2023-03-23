import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgCar,
      type: BottomBarEnum.Car,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVolume,
      type: BottomBarEnum.Volume,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClock,
      type: BottomBarEnum.Clock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClockWhiteA700,
      type: BottomBarEnum.Clockwhitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserWhiteA700,
      type: BottomBarEnum.Userwhitea700,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.green500,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getVerticalSize(
                25,
              ),
              width: getHorizontalSize(
                26,
              ),
              color: ColorConstant.whiteA700,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: getVerticalSize(
                25,
              ),
              width: getHorizontalSize(
                26,
              ),
              color: ColorConstant.whiteA700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          onChanged!(bottomMenuList[index].type);

          /// 🔴 (sugina): это мой лютый костыль чтобы просто потыкать в кнопки и записать скринкаст
          /// на самом деле так делать нельзя! 😈
          /// По-хорошему надо сделать отдельный экран MainScreen и там организовать навигацию
          /// без навигатора по основным вкладкам
          switch(index) {
            case 0:
              Navigator.pushNamed(context, AppRoutes.homeScreen);
              break;
            case 1:
            case 3:
              break;
            case 2:
              Navigator.pushNamed(context, AppRoutes.myCartScreen);
              break;
            case 4:
              Navigator.pushNamed(context, AppRoutes.userScreen);
              break;
          }


        },
      ),
    );
  }
}

enum BottomBarEnum {
  Car,
  Volume,
  Clock,
  Clockwhitea700,
  Userwhitea700,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
