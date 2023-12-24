import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatefulWidget {
  final Color? color;
  final Color? textColor;
  final double? textFont;
  final Widget? icon; // New parameter for custom icon
  final String text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final OutlinedBorder? shape;
  final bool? enabled;
  final bool? loading;
  final double? elevation;
  final Color? shadowColor;
  final Duration? animationDuration;
  final Border? border;
  final Brightness? systemBrightness; // Add this property

  CustomButton({
    this.color,
    this.textColor,
    this.icon,
    this.textFont,
    required this.text,
    required this.onPressed,
    this.width,
    this.margin,
    this.height,
    this.textStyle,
    this.shape,
    this.padding,
    this.textAlign,
    this.onLongPressed,
    this.enabled,
    this.loading,
    this.elevation,
    this.shadowColor,
    this.animationDuration,
    this.border,
    this.systemBrightness, // Initialize it with system brightness
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Brightness? brightness;

  @override
  Widget build(BuildContext context) {
    if (widget.systemBrightness != null &&
        brightness != MediaQuery.of(context).platformBrightness) {
      // Update brightness if systemBrightness property has changed
      setState(() {
        brightness = MediaQuery.of(context).platformBrightness;
      });
    }

    // Determine the text color based on brightness mode or use the provided custom text color
    Color textColor = widget.textColor ??
        (brightness == Brightness.light ? Colors.black : Colors.white);

    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: widget.margin ??
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        height: widget.height ?? 33.sp,
        width: widget.width,
        child: ElevatedButton(
          onLongPress: widget.onLongPressed,
          onPressed: ((widget.enabled != null && !widget.enabled!) ||
                  (widget.loading != null && widget.loading!))
              ? null
              : widget.onPressed,
          style: ElevatedButton.styleFrom(
            padding: widget.padding,
            elevation: widget.elevation,
            shadowColor: widget.shadowColor ?? Color(0x414D5678),
            animationDuration: widget.animationDuration,
            primary: (widget.color ?? Color(0xff2FB8A6)),
            shape: widget.shape ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
          ),
          child: (widget.loading != null && widget.loading == true)
              ? CupertinoActivityIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.icon != null) widget.icon!,
                    SizedBox(
                        width: widget.icon != null
                            ? 8.0
                            : 0), // Adjust the spacing based on your needs
                    Text(
                      widget.text,
                      textAlign: widget.textAlign ?? TextAlign.center,
                      style: widget.textStyle ??
                          TextStyle(
                              color: textColor,
                              fontSize: widget.textFont ?? 12.sp),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
