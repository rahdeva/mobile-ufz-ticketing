import 'package:flutter/material.dart';
import 'package:mobile_ufz_ticketing/feature/discover/discover_controller.dart';
import 'package:mobile_ufz_ticketing/feature/discover/widgets/event_discovery_items.dart';

class ListEventDiscoveryBuilder extends StatelessWidget {
  const ListEventDiscoveryBuilder({
    Key? key, 
    required this.controller, 
  }) : super(key: key);

  final DiscoverController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.dataList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      padding: const EdgeInsets.only(bottom: 24),
      itemBuilder: (context, index) {
        return EventDicoveryListItem(
          index: index,
          controller: controller,
          mData: controller.dataList[index],
        );
      },
    );
  }
}
