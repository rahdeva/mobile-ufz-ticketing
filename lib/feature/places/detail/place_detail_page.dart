import 'package:flutter/material.dart';


class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return SMAppBar(
    //   title: 'txt_menu_detail'.tr,
    //   backgroundColor: AppColors.colorSecondary,
    //   body: GetBuilder<PlaceDetailController>(
    //     init: PlaceDetailController(id: Get.arguments.toString()),
    //     builder: (controller) {
    //       return StateHandleWidget(
    //         loadingView: LoadingOverlay(),
    //         loadingEnabled: controller.isShimmering,
    //         onRetryPressed: () {
    //           controller.getPlaceDetail();
    //         },
    //         errorEnabled: controller.isError,
    //         errorTitle: 'txt_error_general'.tr,
    //         emptyEnabled: controller.isEmptyData,
    //         emptySubtitle: 'txt_empty_place'.tr,
    //         body: SmartRefresher(
    //           enablePullDown: true,
    //           enablePullUp: controller.hasNext.value,
    //           controller: controller.refreshController,
    //           onRefresh: controller.refreshPage,
    //           onLoading: controller.loadNextPage,
    //           child: PlaceDetailContent(
    //               imageStatic: imageStatic, place: controller.dataObj),
    //         ),
    //       );
    //     },
    //   ),
    // );

    return SizedBox();
  }
}
