import 'package:flutter/material.dart';

class SlikkerContainer extends StatelessWidget {
  /// The Hue which will be used for your card. Expected value from 0.0 to 360.0
  final double? accent;

  static double defaultAccent = 240;

  /// If non-null, the corners of this box are rounded by this [BorderRadiusGeometry] value.
  final BorderRadius? borderRadius;

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The empty space that surrounds the card outside.
  final EdgeInsetsGeometry? margin;

  /// The empty space that surrounds the card inside.
  final EdgeInsetsGeometry? padding;

  /// The [Function] that will be invoked on user's tap.
  final Function? onTap;

  SlikkerContainer({
    this.child,
    this.accent,
    this.onTap,
    this.borderRadius,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        color: HSVColor.fromAHSV(
                0.75, accent ?? SlikkerContainer.defaultAccent, 0.04, 0.96)
            .toColor(),
        boxShadow: [],
      ),
      child: child,
    );
  }
}
//HSVColor.fromAHSV(1, 240, 0.04, 0.98).toColor()
