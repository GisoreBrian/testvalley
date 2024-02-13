import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class is used in the [productbannercard_item_widget] screen.
class ProductbannercardItemModel {
  ProductbannercardItemModel({
    this.itemOne,
    this.id,
  }) {
    itemOne = itemOne ?? Rx(ImageConstant.imgItem1);
    id = id ?? Rx("");
  }

  Rx<String>? itemOne;

  Rx<String>? id;
}
