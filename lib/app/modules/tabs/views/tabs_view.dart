import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(

      body: PageView(  //定义左右滑动方式
        controller: controller.pageController,
        children:controller.pages,
        onPageChanged: (value) => controller.setCurrentIndex(value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
  
        currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          controller.setCurrentIndex(index);
          controller.pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '首页',),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "用户"),
        ],
      ),
    ));
  }
}
