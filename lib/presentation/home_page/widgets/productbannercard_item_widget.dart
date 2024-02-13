import '../controller/home_controller.dart';
import '../models/productbannercard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';

// ignore: must_be_immutable
class ProductbannercardItemWidget extends StatelessWidget {
  ProductbannercardItemWidget(
    this.productbannercardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductbannercardItemModel productbannercardItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: productbannercardItemModelObj.itemOne!.value,
        height: 205.v,
        width: 380.h,
        radius: BorderRadius.circular(
          28.h,
        ),
        margin: EdgeInsets.only(bottom: 14.v),
      ),
    );
  }
}
