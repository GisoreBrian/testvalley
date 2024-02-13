import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class is used in the [seventeen_item_widget] screen.
class SeventeenItemModel {
  SeventeenItemModel({
    this.galaxydiscount,
    this.galaxyDiscount,
    this.id,
  }) {
    galaxydiscount = galaxydiscount ?? Rx(ImageConstant.imgGalaxyDiscount55x50);
    galaxyDiscount = galaxyDiscount ?? Rx("galaxy \ndiscount");
    id = id ?? Rx("");
  }

  Rx<String>? galaxydiscount;

  Rx<String>? galaxyDiscount;

  Rx<String>? id;
}
