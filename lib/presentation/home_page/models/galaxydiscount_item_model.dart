import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class is used in the [galaxydiscount_item_widget] screen.
class GalaxydiscountItemModel {
  GalaxydiscountItemModel({
    this.gameDriveImage,
    this.gameDriveText,
    this.id,
  }) {
    gameDriveImage = gameDriveImage ?? Rx(ImageConstant.imgGalaxyDiscount);
    gameDriveText = gameDriveText ?? Rx("game drive");
    id = id ?? Rx("");
  }

  Rx<String>? gameDriveImage;

  Rx<String>? gameDriveText;

  Rx<String>? id;
}
