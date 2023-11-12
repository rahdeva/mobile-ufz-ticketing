import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/discover/discover_controller.dart';
import 'package:mobile_ufz_ticketing/feature/discover/widgets/event_discovery_list_builder.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:mobile_ufz_ticketing/utills/widget/shimmer/shimmer_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sizer/sizer.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscoverController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: 100.w,
            margin: const EdgeInsets.fromLTRB(35, 40, 35, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppImages.icEvent.image(),
                    const SizedBox(width: 16),
                    Text(
                      "Your Event".tr,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Stack(
                    children: [
                      SmartRefresher(
                        enablePullDown: true,
                        enablePullUp: controller.hasNext.value,
                        controller: controller.refreshController,
                        onRefresh: controller.refreshPage,
                        onLoading: controller.loadNextPage,
                        child: (controller.isLoading)
                        ? ShimmerWidget.listScreenShimmer(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            listComponent: ShimmerWidget.listComponent2()
                          )
                        : (controller.dataList.isEmpty)
                          ? const Center(
                              child: Text("asasa"),
                            )
                          : ListEventDiscoveryBuilder(
                              controller: controller
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        );
      }
    );
  }
}
