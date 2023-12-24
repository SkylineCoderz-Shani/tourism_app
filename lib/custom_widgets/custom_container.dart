import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final Color? color;
  final Color? textColor;
  final double? textFont;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final double? suffixIconSize;
  final String? text;
  final String? secondText;
  final Color? secondTextColor;
  final double? secondTextFont;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? textPadding;
  final double? borderRadius; // New property for border radius
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final OutlinedBorder? shape;
  final Color? shadowColor;
  final Border? border;
  final Widget? child;
  final BoxConstraints? customBoxSize;

  @override
  State<CustomContainer> createState() => _CustomContainerState();

  const CustomContainer({
    this.color,
    this.textColor,
    this.textFont,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconSize,
    this.text,
    this.secondText,
    this.secondTextColor,
    this.secondTextFont,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.textPadding,
    this.borderRadius, // Initialize the new property
    this.onPressed,
    this.textStyle,
    this.textAlign,
    this.shape,
    this.shadowColor,
    this.border,
    this.child,
    this.customBoxSize,
  });
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        margin: widget.margin,
        padding: widget.padding,
        constraints: widget.customBoxSize,
        decoration: BoxDecoration(
          color: widget.color ?? Colors.blue,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0.0),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor ?? Color(0x414D5678),
              spreadRadius: 0,
              blurRadius: 6,
            ),
          ],
          border: widget.border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.icon != null) ...[
              Icon(
                widget.icon,
                color: widget.iconColor ?? widget.textColor ?? Colors.white,
                size: widget.iconSize ?? 24.0,
              ),
              SizedBox(width: 8.0),
            ],
            if (widget.text != null) ...[
              Padding(
                padding: widget.textPadding ?? EdgeInsets.zero,
                child: Text(
                  widget.text!,
                  style: TextStyle(
                    fontSize: widget.textFont ?? 18.0,
                    color: widget.textColor ?? Colors.white,
                  ),
                  textAlign: widget.textAlign,
                ),
              ),
            ],
            if (widget.secondText != null) ...[
              Padding(
                padding: widget.textPadding ?? EdgeInsets.zero,
                child: Text(
                  widget.secondText!,
                  style: TextStyle(
                    fontSize: widget.secondTextFont ?? 18.0,
                    color: widget.secondTextColor ?? widget.textColor ?? Colors.white,
                  ),
                  textAlign: widget.textAlign,
                ),
              ),
            ],
            if (widget.child != null) ...[
              SizedBox(width: 8.0),
              widget.child!,
            ],
            if (widget.suffixIcon != null) ...[
              SizedBox(width: 150),
              Icon(
                widget.suffixIcon,
                color: widget.suffixIconColor ?? widget.textColor ?? Colors.white,
                size: widget.suffixIconSize ?? 24.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}