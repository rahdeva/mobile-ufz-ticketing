import 'package:flutter/material.dart';
import '/resources/resources.dart';
import 'package:sizer/sizer.dart';

class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget({
    super.key, 
    required this.buttonText, 
    required this.onPressed, 
    this.width, 
    this.borderRadius, 
    this.margin, 
    this.padding, 
    this.customColors, 
    this.height,
  });

  final String buttonText;
  final double? width;
  final double? height;
  final Color? customColors;
  final double? borderRadius;
  final double? padding;
  final EdgeInsetsGeometry? margin;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100.w,
      height: height,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: const BorderSide(
            width: 1.5,
            color: AppColors.gray300,
          )
        ),
        onPressed: onPressed, 
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: padding ?? 15),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.gray500,
              fontWeight: FontWeight.w400,
            )
          ),
        )
      ),
    );
  }
}