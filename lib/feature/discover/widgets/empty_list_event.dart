import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/utills/widget/button/secondary_button.dart';

class EmptyListEvent extends StatelessWidget {
  const EmptyListEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.gray200,
              child: AppImages.icPastTicketUnactive.image(),
            ),
            const SizedBox(height: 16),
            Text(
              "Ticket not Avaliable😱",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.black
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              "Make sure you buy ticket with the same\naccount that you login it",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.gray500
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SecondaryButtonWidget(
              margin: const EdgeInsets.all(0),
              width: 120,
              buttonText: "Try Again".tr,
              padding: 15,
              onPressed: (){}
            ),
            const SizedBox(height: 40),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "If the problem persists, please report it\nto our ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray500
                    ),
                  ),
                  TextSpan(
                    text: "Help Center",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.blue
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Tap Here onTap'),
                  ),
                ]
              )
            )
          ],
        ),
      );
  }
}
