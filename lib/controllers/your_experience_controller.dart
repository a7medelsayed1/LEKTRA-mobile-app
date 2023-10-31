
import '../../../../core/app_export.dart';
import '../presentation/screens/your_experience_page.dart';

class YourExperienceController extends GetxController {
  YourExperienceController();

    // Rx<YourExperienceModel> yourExperienceModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
class YourExperienceModel {
  RxList<ListellipsetwelveItemModel> listellipsetwelveItemList =
  RxList.generate(3, (index) => ListellipsetwelveItemModel());

  RxList<ListomarahmedItemModel> listomarahmedItemList =
  RxList.generate(2, (index) => ListomarahmedItemModel());

}


