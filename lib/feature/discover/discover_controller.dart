import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/model/event_discovery.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '/feature/bottom_nav_bar/nav_tab_controller.dart';
import 'package:intl/date_symbol_data_local.dart';

class DiscoverController extends GetxController {
  final NavTabController navtabC = NavTabController.find;
  static DiscoverController find = Get.find();
  RefreshController refreshController = RefreshController(initialRefresh: false);
  bool isLoading = false;

  Rx<int> page = Rx(1);
  Rx<bool> hasNext = Rx(false);
  Rx<bool> loadNext = Rx(false);

  List<Event> dataList = [];

  @override
  void onInit() {
    initializeDateFormatting();
    getDataPatrol();
    super.onInit();
  }

  void refreshPage() async {
    dataList = [];
    page.value = 1;
    getDataPatrol();
    update();
    refreshController.refreshCompleted();
  }

  void loadNextPage() {
    loadNext.value = true;
    hasNext.value = false;
    page.value = page.value + 1;
    getDataPatrol(page: page.value);
    refreshController.loadComplete();
  }

  void getDataPatrol({
    int page = 1,
  }){
    dataList = [
      Event(
        id: 1,
        type: 1,
        eventDate: DateTime.now(),
        name: "Martial Mastery Workshop",
        person: 1,
        image: "https://images.unsplash.com/photo-1521515126738-a805f7cf5b23?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
      Event(
        id: 2,
        type: 2,
        eventDate: DateTime.now(),
        name: "Martial Mastery Workshop",
        person: 1,
        image: "https://images.unsplash.com/photo-1521515126738-a805f7cf5b23?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
      Event(
        id: 3,
        type: 3,
        eventDate: DateTime.now(),
        name: "Martial Mastery Workshop",
        person: 1,
        image: "https://images.unsplash.com/photo-1521515126738-a805f7cf5b23?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
      Event(
        id: 4,
        type: 4,
        eventDate: DateTime.now(),
        name: "Martial Mastery Workshop",
        person: 1,
        image: "https://images.unsplash.com/photo-1521515126738-a805f7cf5b23?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
      Event(
        id: 5,
        type: 5,
        eventDate: DateTime.now(),
        name: "Martial Mastery Workshop",
        person: 1,
        image: "https://images.unsplash.com/photo-1521515126738-a805f7cf5b23?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),
    ];
  }
}
