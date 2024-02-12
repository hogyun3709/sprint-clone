import 'package:flutter/material.dart';
import 'package:sprint_clone/ui/common/components/cui_spinnert.dart';
import 'package:sprint_clone/ui/common/ui_helpers.dart';

enum CuiButtonSize { Small, Normal, Large, Auto }

class CuiButton extends StatelessWidget {
  final double? width;
  final bool enabled;
  final String title;
  final VoidCallback? onTap;
  final bool busy;
  final CuiButtonSize size;
  final bool isFullWidth;
  final bool isDottedOutline;
  final Color? spinnerColor;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? disabledColor;
  final Widget? leading;
  final Widget? trailing;
  final Widget? icon;
  final double? height;
  final TextStyle? textStyle;
  final Widget? child;
  final EdgeInsets? padding;
  final String? busyTitle;
  final bool isOutline;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;
  final Color? disabledTextColor;
  final BorderRadius? borderRadius;
  final bool? isEditButton;

  const CuiButton(
      {Key? key,
      this.enabled = true,
      required this.title,
      this.onTap,
      this.busy = false,
      this.isFullWidth = true,
      this.backgroundColor,
      this.textColor,
      this.leading,
      this.trailing,
      this.icon,
      this.width,
      this.textStyle,
      this.height,
      this.size = CuiButtonSize.Normal,
      this.child,
      this.spinnerColor,
      this.borderColor,
      this.busyTitle,
      this.disabledColor,
      this.isOutline = false,
      this.padding,
      this.margin,
      this.fontSize,
      this.disabledTextColor,
      this.borderRadius,
      this.isEditButton = false})
      : isDottedOutline = false,
        super(key: key);

  void _executeTapCallback() {
    if (!busy) onTap?.call();
  }

  double? _getButtonHeight(CuiButtonSize size) {
    switch (size) {
      case CuiButtonSize.Small:
        return 40;
      case CuiButtonSize.Normal:
        return 52;
      case CuiButtonSize.Large:
        return 60;
      case CuiButtonSize.Auto:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? _getButtonHeight(size),
      width: isFullWidth ? double.infinity : width,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(4),
          color: isOutline
              ? Colors.transparent
              : !enabled
                  ? disabledColor
                  : backgroundColor ?? Colors.white,
          border: borderColor != null || isOutline
              ? Border.all(color: borderColor ?? Colors.white)
              : null,
        ),
        child: MaterialButton(
          padding: padding ?? EdgeInsets.zero,
          color: backgroundColor,
          elevation: 0,
          disabledColor: disabledColor ?? Colors.grey.shade500,
          splashColor: Colors.grey.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          onPressed: !enabled ? null : _executeTapCallback,
          child: busy
              ? busyTitle != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(busyTitle ?? '',
                            style: textStyle ??
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  height: 20 / 14,
                                  color: !enabled
                                      ? disabledTextColor ??
                                          Colors.grey.shade500
                                      : textColor ?? Colors.white,
                                )),
                        horizontalSpaceMedium,
                        CuiSpinner(
                          color: spinnerColor ?? Colors.white,
                        ),
                      ],
                    )
                  : CuiSpinner(color: spinnerColor ?? Colors.white)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (leading != null) leading!,
                    icon ?? const SizedBox.shrink(),
                    if (icon != null && isEditButton == false)
                      horizontalSpaceSmall,
                    if (isEditButton == true) horizontalSpace(2),
                    child ??
                        Text(title,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: textStyle ??
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  height: 20 / 14,
                                  color: !enabled
                                      ? disabledTextColor ?? Colors.black
                                      : textColor ?? Colors.white,
                                )),
                    if (trailing != null) trailing!,
                    if (isEditButton == true) horizontalSpace(8),
                  ],
                ),
        ),
      ),
    );
  }
}
