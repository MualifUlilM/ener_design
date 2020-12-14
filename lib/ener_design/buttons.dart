import 'package:flutter/material.dart';

class EnerButtonsSocialLogin extends StatelessWidget {
  EnerButtonsSocialLogin({
    this.icon,
    this.label,
    this.textStyle,
    this.onTap,
    this.backgroundColor,
    this.blurRadius,
    this.borderRadius,
    this.offsetX,
    this.offsetY,
    this.shadowColor,
    this.borderColor,
    this.borderWidth,
    this.gradient,
    this.height,
    this.width,
  });

  final Color backgroundColor;
  final Color shadowColor;
  final Color borderColor;
  final double borderRadius;
  final double blurRadius;
  final double offsetX;
  final double offsetY;
  final double height;
  final double width;
  final double borderWidth;
  final String label;
  final TextStyle textStyle;
  final VoidCallback onTap;
  final Widget icon;
  final List<Color> gradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height ?? 60,
        width: width ?? 250,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: borderColor == null
                ? null
                : Border.all(color: borderColor, width: borderWidth),
            gradient:
                gradient == null ? null : LinearGradient(colors: gradient),
            boxShadow: shadowColor != null
                ? [
                    BoxShadow(
                        blurRadius: blurRadius ?? 6,
                        color: shadowColor,
                        offset: Offset(offsetX ?? 4, offsetY) ?? 0)
                  ]
                : []),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? Container(),
            // SizedBox(
            //   width: 10,
            // ),
            Text(
              label ?? "",
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
