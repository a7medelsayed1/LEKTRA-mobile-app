import 'package:ahmed_s_application4/core/app_export.dart';

class ThreeController extends GetxController {
  Rx<ThreeModel> threeModelObj = ThreeModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class ThreeModel {
  get sliderclarityneItemList => null;
}