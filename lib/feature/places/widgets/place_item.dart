import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/model/place.dart';
import '/routes/page_names.dart';

class PlaceListItem extends StatelessWidget {
  final int index;
  final Place mData;
  const PlaceListItem({required this.index, required this.mData});
  final image = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () {
          Get.toNamed(PageName.USER_DETAIL, arguments: mData.id.toString());
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 30,
            ),
            title: Text(mData.name ?? ''),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                mData.description ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
