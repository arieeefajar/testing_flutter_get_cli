import 'package:crud_flutter_get_cli/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProductView'), centerTitle: true),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.product.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text(controller.product[index]["name"])),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: Icon(Icons.add),
      ),
    );
  }
}
