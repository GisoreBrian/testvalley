import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import 'productbannercard_item_model.dart';
import 'galaxydiscount_item_model.dart';
import 'seventeen_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ProductbannercardItemModel>> productbannercardItemList = Rx([
    ProductbannercardItemModel(itemOne: ImageConstant.imgItem1.obs),
    ProductbannercardItemModel(itemOne: ImageConstant.imgItem1.obs),
    ProductbannercardItemModel(itemOne: ImageConstant.imgItem1.obs),
    ProductbannercardItemModel(itemOne: ImageConstant.imgItem1.obs)
  ]);

  Rx<List<GalaxydiscountItemModel>> galaxydiscountItemList = Rx([
    GalaxydiscountItemModel(
        gameDriveImage: ImageConstant.imgGalaxyDiscount.obs,
        gameDriveText: "game drive".obs),
    GalaxydiscountItemModel(
        gameDriveImage: ImageConstant.imgTopquality1.obs,
        gameDriveText: "Apple".obs),
    GalaxydiscountItemModel(
        gameDriveImage: ImageConstant.imgUsedphone1.obs,
        gameDriveText: "Winter SALE".obs),
    GalaxydiscountItemModel(
        gameDriveImage: ImageConstant.imgSell1.obs,
        gameDriveText: "Smartphone".obs),
    GalaxydiscountItemModel(
        gameDriveImage: ImageConstant.imgServiceintro1.obs,
        gameDriveText: "View all".obs)
  ]);

  Rx<List<SeventeenItemModel>> seventeenItemList = Rx([
    SeventeenItemModel(
        galaxydiscount: ImageConstant.imgGalaxyDiscount55x50.obs,
        galaxyDiscount: "galaxy \ndiscount".obs),
    SeventeenItemModel(
        galaxydiscount: ImageConstant.imgTopquality155x50.obs,
        galaxyDiscount: "Top quality\nused".obs),
    SeventeenItemModel(
        galaxydiscount: ImageConstant.imgSell155x50.obs,
        galaxyDiscount: "Sell".obs),
    SeventeenItemModel(
        galaxydiscount: ImageConstant.imgServiceintro155x50.obs,
        galaxyDiscount: "Service Introduction".obs)
  ]);
}
