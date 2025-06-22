import 'package:get/get.dart';

class ProductController extends GetxController {
  //TODO: Implement ProductController
  RxList<Map<String, dynamic>> product = <Map<String, dynamic>>[
    {"id": 1, "name": "Product 1", "price": 10.99, "quantity": 5},
    {"id": 2, "name": "Product 2", "price": 19.99, "quantity": 3},
  ].obs;

  void addProduct(String name, String price, String quantity) {
    if (name.isNotEmpty && price.isNotEmpty && quantity.isNotEmpty) {
      product.add({
        "id": product.length + 1,
        "name": name,
        "price": double.parse(price),
        "quantity": int.parse(quantity),
      });
    } else {
      Get.snackbar("Error", "Please fill all the fields");
    }
    Get.back();
  }
}
