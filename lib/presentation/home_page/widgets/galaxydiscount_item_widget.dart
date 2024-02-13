import '../controller/home_controller.dart';
import '../models/galaxydiscount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';

// ignore: must_be_immutable
class GalaxydiscountItemWidget extends StatelessWidget {
  GalaxydiscountItemWidget(
    this.galaxydiscountItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalaxydiscountItemModel galaxydiscountItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: galaxydiscountItemModelObj.gameDriveImage!.value,
                height: 55.v,
                width: 50.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 2.h),
              ),
            ),
            SizedBox(height: 7.v),
            Obx(
              () => Text(
                galaxydiscountItemModelObj.gameDriveText!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
