import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';
import '../../../services/keepAliveWrapper.dart';
import '../../../services/ityingFonts.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Keepalivewrapper(
      child: Scaffold(
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      width: 1080.w,
                      height: 682.h,
                      color: Colors.black,
                      child: Image.network(
                          "https://www.itying.com/images/focus/focus02.png",
                          fit: BoxFit.cover),
                    );
                  } else {
                    return ListTile(
                      title: Text('item $index'),
                    );
                  }
                }),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                  leading: const Icon(
                    ItyingFonts.xiaomi,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'HomeView',
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                  backgroundColor:
                      const Color.fromARGB(0, 192, 112, 112), // 背景透明
                  elevation: 0,
                  actions: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.qr_code)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.message))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
