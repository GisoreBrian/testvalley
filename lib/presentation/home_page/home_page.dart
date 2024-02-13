import '../home_page/widgets/galaxydiscount_item_widget.dart';
import '../home_page/widgets/productbannercard_item_widget.dart';
import '../home_page/widgets/seventeen_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/galaxydiscount_item_model.dart';
import 'models/home_model.dart';
import 'models/productbannercard_item_model.dart';
import 'models/seventeen_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/widgets/app_bar/appbar_title.dart';
import 'package:testvalley/widgets/app_bar/appbar_trailing_image.dart';
import 'package:testvalley/widgets/app_bar/custom_app_bar.dart';
import 'package:testvalley/widgets/custom_outlined_button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              children: [
                _buildProductBannerCard(),
                SizedBox(height: 11.v),
                _buildFour(),
                SizedBox(height: 34.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Text(
                      "lbl_hot_deals".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "msg_up_to_34_off".tr,
                      style: CustomTextStyles.labelLargeRobotoCondensed,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 16.v),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          children: [
                            _buildOne(),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_title".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            Text(
                              "msg_home_sound_system".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 32.v),
                            Container(
                              width: 328.h,
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Text(
                                "msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            SizedBox(height: 32.v),
                            CustomOutlinedButton(
                              width: 91.h,
                              text: "lbl_us_120".tr,
                              margin: EdgeInsets.only(right: 16.h),
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 41.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 16.v),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMedia,
                              height: 214.v,
                              width: 360.h,
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_title".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            Text(
                              "msg_home_sound_system".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 32.v),
                            Container(
                              width: 328.h,
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Text(
                                "msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            SizedBox(height: 32.v),
                            CustomOutlinedButton(
                              width: 91.h,
                              text: "lbl_us_120".tr,
                              margin: EdgeInsets.only(right: 16.h),
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_testvalley".tr,
        margin: EdgeInsets.only(left: 22.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 18.v,
            right: 20.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 18.v,
            right: 44.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductBannerCard() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 219.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount: controller
              .homeModelObj.value.productbannercardItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            ProductbannercardItemModel model = controller
                .homeModelObj.value.productbannercardItemList.value[index];
            return ProductbannercardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFour() {
    return SizedBox(
      height: 200.v,
      width: 355.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 200.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.only(
                    top: 123.v,
                    right: 21.h,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 17.h,
                    );
                  },
                  itemCount: controller
                      .homeModelObj.value.galaxydiscountItemList.value.length,
                  itemBuilder: (context, index) {
                    GalaxydiscountItemModel model = controller
                        .homeModelObj.value.galaxydiscountItemList.value[index];
                    return GalaxydiscountItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 38.h,
              margin: EdgeInsets.only(top: 61.v),
              child: Text(
                "msg_used_phone_special".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 200.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    bottom: 107.v,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 13.h,
                    );
                  },
                  itemCount: controller
                      .homeModelObj.value.seventeenItemList.value.length,
                  itemBuilder: (context, index) {
                    SeventeenItemModel model = controller
                        .homeModelObj.value.seventeenItemList.value[index];
                    return SeventeenItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return SizedBox(
      height: 214.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMedia,
            height: 214.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 14.v),
              child: SizedBox(
                width: 108.h,
                child: Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
