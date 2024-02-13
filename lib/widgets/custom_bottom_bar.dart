import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSearch,
      activeIcon: ImageConstant.imgNavSearch,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCategory,
      activeIcon: ImageConstant.imgNavCategory,
      title: "lbl_category".tr,
      type: BottomBarEnum.Category,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavGreat,
      activeIcon: ImageConstant.imgNavGreat,
      title: "lbl_great".tr,
      type: BottomBarEnum.Great,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMyPage,
      activeIcon: ImageConstant.imgNavMyPage,
      title: "lbl_my_page".tr,
      type: BottomBarEnum.Mypage,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.v,
      decoration: BoxDecoration(
        color: appTheme.purple50,
        borderRadius: BorderRadius.circular(
          30.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    color: appTheme.black900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelLargeGray800.copyWith(
                        color: appTheme.gray800,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: AppDecoration.fillDeepPurple.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 16.v,
                      width: 18.h,
                      color: appTheme.black900,
                      margin: EdgeInsets.fromLTRB(23.h, 10.v, 22.h, 6.v),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelLargeGray900.copyWith(
                        color: appTheme.gray900,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Category,
  Great,
  Mypage,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
