import 'package:flutter/material.dart';
import 'package:mobile_ufz_ticketing/feature/discover/discover_controller.dart';
import 'package:mobile_ufz_ticketing/model/event_discovery.dart';
import 'package:sizer/sizer.dart';
import '/resources/resources.dart';

class EventDicoveryListItem extends StatelessWidget {
  final int index;
  final DiscoverController controller;
  final Event mData;

  const EventDicoveryListItem({
    Key? key, 
    required this.index, 
    required this.controller, 
    required this.mData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(
        //   PageName.DETAIL_DATA_PATROLI,
        //   arguments: mData
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: mData.type == 1
              ? AppImages.imgListBGPurple.image().image
              : mData.type == 2
                ? AppImages.imgListBGBlue.image().image
                : mData.type == 3
                  ? AppImages.imgListBGYellow.image().image
                  : mData.type == 4
                    ? AppImages.imgListBGRed.image().image
                    : AppImages.imgListBGGreen.image().image,
            fit: BoxFit.fill
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 172,
              width: 100.w - 220,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black
                        ),
                        children: const [
                          TextSpan(
                            text: "Normal Ticket",
                          ),
                          TextSpan(
                            text: " • ",
                          ),
                          TextSpan(
                            text: "1 Person",
                          ),
                        ]
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mData.name ?? "-",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.white
                          ),
                          children: const [
                            TextSpan(
                              text: "Mon, Oct 3",
                            ),
                            TextSpan(
                              text: " • ",
                            ),
                            TextSpan(
                              text: "7.00 PM",
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, bottom: 8),
                    decoration: BoxDecoration(
                      color: mData.type == 1
                        ? AppColors.purpleGradient
                        : mData.type == 2
                          ? AppColors.blueGradient
                          : mData.type == 3
                            ? AppColors.yellowGradient
                            : mData.type == 4
                              ? AppColors.redGradient
                              : AppColors.greenGradient,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppImages.icScan.image(),
                        const SizedBox(width: 5),
                        Text(
                          "Tap to Scan",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 172,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5), 
                  bottomRight: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    mData.image!
                  ),
                  fit: BoxFit.cover
                )
              ),
            )
            // CachedNetworkImage(
            //   imageUrl: mData.image!,
            //   imageBuilder: (context, imageProvider) => Container(
            //     decoration: BoxDecoration(
            //       image: DecorationImage(image: imageProvider)
            //     ),
            //   ),
            //   placeholder: (context, url) => const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}