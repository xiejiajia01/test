import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../../../services/screenAdapter.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(Screenadapter.getScreenHeight());
    print(Screenadapter.getScreenWidth());
    return Scaffold(
        appBar: AppBar(
          title: const Text('CategoryView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: Screenadapter.width(1080),
              height: Screenadapter.height(600),
              color: Colors.red,
              child: Text('CategoryView',
                  style: TextStyle(fontSize: Screenadapter.fontSize(32))),
            )
          ],
        ));
  }
}
