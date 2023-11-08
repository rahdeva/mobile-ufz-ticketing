import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SizedBox(),
        // child: Container(
        //   child: GetBuilder<PlaceController>(
        //     builder: (controller) {
        //       return StateHandleWidget(
        //         loadingEnabled: controller.isShimmering,
        //         emptyEnabled: controller.isEmptyData,
        //         emptySubtitle: 'txt_empty_place'.tr,
        //         errorEnabled: controller.isError,
        //         errorTitle: 'txt_error_general'.tr,
        //         onRetryPressed: () {
        //           controller.refreshPage();
        //         },
        //         body: BaseListBuilder(
        //           controller,
        //           item: (BuildContext context, int index) {
        //             return PlaceListItem(
        //               index: index,
        //               mData: controller.dataList[index],
        //             );
        //           },
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }
}
