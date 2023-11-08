import 'package:flutter/cupertino.dart';
import '/data/local/storage/storage_constants.dart';
import '/data/remote/api_services.dart';
import '/data/remote/base/base_controller.dart';
import '/data/remote/errorhandler/error_handler.dart';
import '/model/place.dart';

class PlaceDetailController extends BaseController<Place> {
  PlaceDetailController({required this.id});
  final String id;

  @override
  get statusData => dataObj;

  @override
  String get storageName => StorageName.placeDetail;

  @override
  void loadNextPage() {}

  @override
  void refreshPage() {
    getPlaceDetail();
  }

  @override
  void onInit() {
    getCache(id: id).then((value) => getPlaceDetail());
    super.onInit();
  }

  Future<void> getPlaceDetail() async {
    loadingState();
    await client().then(
      (value) => value
          .getPlaceDetail(int.parse(id))
          .validateResponse()
          .then((data) async {
        await saveCacheAndFinish(data: data.data);
      }).handleError((error) {
        finishLoadData(errorMessage: error.toString());
        debugPrint(error.toString());
      }),
    );
  }
}
