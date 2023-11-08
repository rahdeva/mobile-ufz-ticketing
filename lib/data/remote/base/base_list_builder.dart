import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '/data/remote/base/base_controller.dart';

class BaseListBuilder extends StatelessWidget {
  final BaseController controller;
  final Function(BuildContext context, int index) item;

  const BaseListBuilder(
    this.controller, {
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: controller.hasNext.value,
      controller: controller.refreshController,
      onRefresh: controller.refreshPage,
      onLoading: controller.loadNextPage,
      child: ListView.builder(
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) => item(context, index),
      ),
    );
  }
}
