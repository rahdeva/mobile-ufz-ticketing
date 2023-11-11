import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/past_ticket/past_ticket_controller.dart';

class PastTicketPage extends StatelessWidget {
  const PastTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastTicketController>(
      builder: (controller) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  "txt_bottomnav_past_ticket".tr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
      }
    );
  }
}
