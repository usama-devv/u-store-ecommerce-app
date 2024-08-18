import 'package:flutter/material.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/device/device_utility.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class UTabBar extends StatelessWidget implements PreferredSizeWidget {
  const UTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? UColors.black : UColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: UColors.primary,
        labelColor: dark ? UColors.white : UColors.primary,
        unselectedLabelColor: UColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(UDeviceUtils.getAppBarHeight());
}
