import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';
import '../../product/controllers/product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({super.key});
  @override
  Widget build(BuildContext context) {
    final productC = Get.find<ProductController>();
    return Scaffold(
      appBar: AppBar(title: const Text('AddProductView'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: InputDecoration(labelText: "Product Name"),
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Product Price"),
          ),
          TextField(
            controller: controller.quantityC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Product Quantity"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => productC.addProduct(
              controller.nameC.text,
              controller.priceC.text,
              controller.quantityC.text,
            ),
            child: const Text("Add Product"),
          ),
        ],
      ),
    );
  }
}
