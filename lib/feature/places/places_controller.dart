import 'package:flutter/cupertino.dart';
import '/data/local/storage/storage_constants.dart';
import '/data/remote/api_services.dart';
import '/data/remote/base/base_controller.dart';
import '/data/remote/errorhandler/error_handler.dart';
import '/model/place.dart';

class PlaceController extends BaseController<Place> {
  @override
  get statusData => dataList;

  @override
  get storageName => StorageName.places;

  @override
  void onInit() {
    getCache().then((value) => getPlaces());
    super.onInit();
  }

  @override
  void refreshPage() {
    getPlaces();
  }

  @override
  void loadNextPage() {
    getPlaces(page: page.value + 1);
  }

  Future<void> getPlaces({int page = 1}) async {
    loadingState();
    await client().then(
      (value) => value
          .getPlaces(page, perPage.value)
          .validateResponse()
          .then((data) async {
        await saveCacheAndFinish(page: page, list: data.data);
      }).handleError((onError) {
        finishLoadData(errorMessage: onError.toString());
        debugPrint("error : " + onError.toString());
      }),
    );
  }
}
