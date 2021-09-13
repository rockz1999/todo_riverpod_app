import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box(
      {Key? key,
      this.child,
      this.padding = 24,
      this.borderRadius = 16,
      this.height,
      this.edgeInsets,
      this.bgColor = Colors.white,
      this.borderColor,
      this.margin = false,
      this.width})
      : super(key: key);
  final Widget? child;
  final Color? borderColor;
  final double padding;
  final Color bgColor;
  final double? height;
  final EdgeInsets? edgeInsets;
  final double borderRadius;
  final double? width;
  final bool margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin ? const EdgeInsets.symmetric(vertical: 10) : null,
      width: width,
      clipBehavior: Clip.antiAlias,
      padding: edgeInsets ?? EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor,
          border: borderColor != null
              ? Border.all(color: borderColor ?? bgColor)
              : null),
      child: child ?? Container(),
    );
  }
}
