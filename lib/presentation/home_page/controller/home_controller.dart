import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/presentation/home_page/models/home_model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;

  Rx<int> sliderIndex = 0.obs;
}
