import 'package:ahmed_s_application4/core/app_export.dart';
/// A controller class for the HomeParentsOneScreen.
///
/// This class manages the state of the HomeParentsOneScreen, including the
/// current homeParentsOneModelObj
class HomeParentsOneController extends GetxController {
  Rx<HomeParentsOneModel> homeParentsOneModelObj = HomeParentsOneModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.yourReportPatientScreen,
      );
    });
  }
}

class HomeParentsOneModel {
  Rx<List<Sliderclarityne1ItemModel>> sliderclarityne1ItemList =
  Rx(List.generate(1, (index) => Sliderclarityne1ItemModel()));
}
class Sliderclarityne1ItemModel {
  Rx<String>? id = Rx("");
}