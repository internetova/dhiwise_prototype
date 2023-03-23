import 'package:flutter/material.dart';
import 'package:groceryprototype/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT21:
        return getPadding(
          top: 21,
          right: 21,
          bottom: 21,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA20033:
        return ColorConstant.green500;
      case ButtonVariant.FillGray300d8:
        return ColorConstant.gray300D8;
      case ButtonVariant.FillGray10002:
        return ColorConstant.gray10002;
      case ButtonVariant.OutlineGreen500:
        return null;
      default:
        return ColorConstant.green500;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGreen500:
        return BorderSide(
          color: ColorConstant.green500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA20033:
        return ColorConstant.indigoA20033;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.MontserratSemiBold16Green500:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratBold22:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.23,
          ),
        );
      case ButtonFontStyle.MontserratSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.MontserratSemiBold16Green500_1:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.MontserratSemiBold2661:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            26.61,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.24,
          ),
        );
      case ButtonFontStyle.MontserratSemiBold14:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.29,
          ),
        );
      case ButtonFontStyle.MontserratSemiBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.29,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.22,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  RoundedBorder10,
  MontserratSemiBold16Green500,
}

enum ButtonPadding {
  PaddingAll14,
  PaddingAll11,
  PaddingAll6_1,
  PaddingT21,
}

enum ButtonVariant {
  FillGreen500,
  OutlineIndigoA20033,
  OutlineGreen500,
  FillGray300d8,
  FillGray10002,
}

enum ButtonFontStyle {
  MontserratSemiBold18,
  MontserratBold22,
  MontserratSemiBold16,
  MontserratSemiBold16Green500_1,
  MontserratSemiBold2661,
  MontserratSemiBold14,
  MontserratSemiBold14WhiteA700,
}
