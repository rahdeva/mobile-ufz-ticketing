import 'package:flutter/material.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/utills/helper/input_formatter.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class PinInputWidget extends StatelessWidget {
  const PinInputWidget({
    super.key, 
    this.validator,
    this.onCompleted, 
    this.onChanged, 
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween, 
    this.length = 6, 
  });

  final String? Function(String?)? validator;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;
  final MainAxisAlignment mainAxisAlignment;
  final int length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Pinput(
        length: length,
        mainAxisAlignment: mainAxisAlignment,
        validator: validator,
        onCompleted: onCompleted,
        onChanged: onChanged,
        inputFormatters: [
          UpperCaseTextFormatter(),
        ],
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        keyboardType: TextInputType.text,
        defaultPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: AppColors.black
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.gray500
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: AppColors.black
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.blue
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        submittedPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: AppColors.black
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.blue
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        errorPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: AppColors.black
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.red
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}