import 'package:edurider/student.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
       bottomNavigationBar:Obx(()=> NavigationBar(
        height: 80,
        elevation:0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) =>controller.selectedIndex.value = index,
 
         destinations:const[
        NavigationDestination(icon:Icon(Iconsax.home),label:'home'),
        NavigationDestination(icon:Icon(Iconsax.home),label:'home'),
        NavigationDestination(icon:Icon(Iconsax.home),label:'home'),
        
        
      ], ),),
      body:Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
 final Rx<int> selectedIndex = 0.obs;

 final screens = [Container(color: Colors.yellow),Container(color: Colors.yellow),Container(color: Colors.red)];

}