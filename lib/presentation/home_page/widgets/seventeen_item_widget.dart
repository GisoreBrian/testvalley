import '../controller/home_controller.dart';
import '../models/seventeen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';

// ignore: must_be_immutable
class SeventeenItemWidget extends StatelessWidget {
  SeventeenItemWidget(
    this.seventeenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventeenItemModel seventeenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: seventeenItemModelObj.galaxydiscount!.value,
                height: 55.v,
                width: 50.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 6.v),
            SizedBox(
              width: 47.h,
              child: Obx(
                () => Text(
                  seventeenItemModelObj.galaxyDiscount!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
