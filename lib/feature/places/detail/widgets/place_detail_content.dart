import 'package:flutter/material.dart';
import '/model/place.dart';
import 'package:sizer/sizer.dart';

class PlaceDetailContent extends StatelessWidget {
  const PlaceDetailContent({
    Key? key,
    required this.imageStatic,
    this.place,
  }) : super(key: key);

  final String imageStatic;
  final Place? place;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Image.network(
                imageStatic,
                fit: BoxFit.fill,
                height: 30.h, // 20 % of screeen height
                width: 100.h, // 100 % of screeen width
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              place?.name ?? "-",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              place?.address ?? "-",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              place?.description ?? "-",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 15.sp,
            ),
          ],
        ),
      ),
    );
  }
}
