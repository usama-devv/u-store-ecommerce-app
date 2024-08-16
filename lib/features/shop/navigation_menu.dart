import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:u_store/features/shop/screens/home/home_screen.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'package:u_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=>  NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode? UColors.dark : UColors.white,
          indicatorColor: darkMode? UColors.white.withOpacity(0.1) : UColors.dark.withOpacity(0.1),
          destinations: const[
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens =[
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.blue),
    Container(color: Colors.indigo),
  ];
}
