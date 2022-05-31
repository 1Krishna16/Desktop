import 'package:app/models/productModel.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();
  RxList<CheckProduct> addOnProducts = <CheckProduct>[].obs;

  @override
  void onReady() {
    super.onReady();
    addOnProducts.add(CheckProduct(product: ProductModel('productOne', 20)));
    addOnProducts.add(CheckProduct(product: ProductModel('productTwo', 25)));
    addOnProducts.add(CheckProduct(product: ProductModel('productThree', 30)));
    addOnProducts.add(CheckProduct(product: ProductModel('productFour', 40)));
  }
}

class CheckProduct {
  ProductModel product;
  RxBool selected = false.obs;
  CheckProduct({
    required this.product,
  });
}
