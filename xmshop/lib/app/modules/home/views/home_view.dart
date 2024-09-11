import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';
import '../../../services/keepAliveWrapper.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Keepalivewrapper(child: Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
        width: 1080.w,
        height: 690.h,
        color: Colors.red,
      ),
      SizedBox(height: 20.h,),
      Container(
        width: 540.w,
        height: 690.h,
        color: Colors.yellow,
        child: Text("手机",style: TextStyle(fontSize: 34.sp),)
      ),
      ],),
      ),
    );
  }
}
