import 'package:bah_easy_cpr/core/style/app_color.dart';
import 'package:bah_easy_cpr/core/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonType { primary, secondary, tertiary, danger, success }

class BaseButton extends StatelessWidget {
  final ButtonType buttonType;
  final bool fitContent;
  final double? minWidth;
  final double? width;
  final Color? color;
  final double borderRadius;
  final VoidCallback onTap;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final String? text;
  final Widget? iconWidget;
  final MainAxisAlignment rowMainAxisAlignment;
  final Color? txtColor;
  final EdgeInsets? margin;
  final bool isEnable;
  final bool hasShadowBox;
  final Function(bool)? onHighlightChanged;

  const BaseButton({
    super.key,
    this.buttonType = ButtonType.primary,
    this.fitContent = true,
    this.minWidth,
    this.width,
    this.color,
    this.borderRadius = 32.0,
    required this.onTap,
    this.padding = const EdgeInsets.all(8.0),
    this.textStyle,
    this.text,
    this.iconWidget,
    this.rowMainAxisAlignment = MainAxisAlignment.center,
    this.txtColor,
    this.margin,
    this.isEnable = true,
    this.hasShadowBox = true,
    this.onHighlightChanged,
  });

  Color _getBorderColor() {
    if (!isEnable) {
      return AppColor.themePlatinumColor;
    }

    if (color != null) {
      return color!;
    }

    switch (buttonType) {
      case ButtonType.danger:
        return AppColor.themeCancelColor;
      case ButtonType.tertiary:
        return Colors.transparent;
      case ButtonType.secondary:
        return AppColor.themeGreenLightColor;
      case ButtonType.success:
        return AppColor.themePrimaryColor;
      case ButtonType.primary:
      default:
        return AppColor.themePrimaryColor;
    }
  }

  Color _getButtonColor() {
    if (!isEnable) {
      return AppColor.themePlatinumColor;
    }

    switch (buttonType) {
      case ButtonType.danger:
        return AppColor.themeCancelColor;
      case ButtonType.tertiary:
        return Colors.transparent;
      case ButtonType.secondary:
        return AppColor.themeGreenLightColor;
      case ButtonType.success:
        return AppColor.themePrimaryColor;
      case ButtonType.primary:
      default:
        return AppColor.themePrimaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final minWidth = this.minWidth ?? 0;
    final width = this.width;
    final hasIcon = iconWidget != null;
    final hasText = text != null;

    return Container(
      constraints: fitContent
          ? BoxConstraints(
              minWidth: minWidth,
            )
          : null,
      width: width,
      margin: margin,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _getBorderColor(),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          color: color ?? _getButtonColor(),
          boxShadow: hasShadowBox
              ? [
                  BoxShadow(
                    color: AppColor.themeBlackColor.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: color ?? _getButtonColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: InkWell(
            onHighlightChanged: isEnable ? onHighlightChanged : null,
            onTap: isEnable ? onTap : null,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              padding: padding,
              child: Row(
                mainAxisAlignment: rowMainAxisAlignment,
                children: [
                  if (hasIcon) ...[
                    if (rowMainAxisAlignment == MainAxisAlignment.start) ...[
                      SizedBox(
                        width: 40.w,
                      ),
                    ],
                    iconWidget!,
                  ],
                  if (hasIcon && hasText) ...[
                    SizedBox(
                      width: 8.0.w,
                    ),
                  ],
                  if (hasText) ...[
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          text!,
                          overflow: TextOverflow.ellipsis,
                          style: textStyle ??
                              AppStyle.txtHeader18Semi.copyWith(
                                color: txtColor ?? AppColor.themeWhiteColor,
                                decoration: buttonType == ButtonType.tertiary ? TextDecoration.underline : null,
                                decorationColor: txtColor,
                              ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
