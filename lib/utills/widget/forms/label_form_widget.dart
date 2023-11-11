import 'package:flutter/material.dart';
import '/resources/resources.dart';

class LabelFormWidget extends StatelessWidget {
  const LabelFormWidget({
    super.key, 
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        labelText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}