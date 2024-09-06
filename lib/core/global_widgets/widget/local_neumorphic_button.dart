import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class LocalNeumorphicButton extends HookWidget {
  const LocalNeumorphicButton({
    super.key,
    required this.child,
    required this.onPressedBasedOnDuration,
    this.labelStyle,
    this.padding,
    this.duration,
    this.functionDuration,
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback onPressedBasedOnDuration;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;
  final Duration? duration;
  final Duration? functionDuration;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final isElevated = useState<bool>(true);

    return GestureDetector(
      onTapDown: (_) {
        isElevated.value = false;
        Future.delayed(
            functionDuration ?? duration ?? const Duration(milliseconds: 200),
            onPressedBasedOnDuration);
      },
      onTapUp: (_) {
        isElevated.value = true;
      },
      onTapCancel: () {
        isElevated.value = true;
      },
      child: AnimatedContainer(
        duration: duration ?? const Duration(milliseconds: 200),
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          // when _isElevated is false, value
          // of inset parameter will be true
          // that will create depth effect.
          boxShadow: isElevated.value
              ? [
                  const BoxShadow(
                    color: Color(0xFFBEBEBE),
                    // Shadow for bottom right corner
                    offset: Offset(5, 5),
                    blurRadius: 5,
                    spreadRadius: 1,
                    inset: false,
                  ),
                  const BoxShadow(
                    color: Color(0xFFBEBEBE),
                    // Shadow for top left corner
                    offset: Offset(-5, -5),
                    blurRadius: 5,
                    spreadRadius: 1,
                    inset: false,
                  ),
                ]
              : [
                  const BoxShadow(
                    color: AppColors.silver989899,
                    // Shadow for bottom right corner
                    offset: Offset(5, 5),
                    blurRadius: 5,
                    spreadRadius: 1,
                    inset: true,
                  ),
                  const BoxShadow(
                    color: Color(0xFFBEBEBE),
                    // Shadow for top left corner
                    offset: Offset(-3, -3),
                    blurRadius: 5,
                    spreadRadius: 1,
                    inset: true,
                  ),
                ],
        ),
        child: ClipRRect(child: child),
      ),
    );
  }
}
