import 'package:app/controllers/productController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridSelect extends StatefulWidget {
  const GridSelect({Key? key}) : super(key: key);

  @override
  State<GridSelect> createState() => _GridSelectState();
}

class _GridSelectState extends State<GridSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => GridView.count(
            crossAxisCount: 2,
            children: ProductController.instance.addOnProducts
                .map((element) => ProductWidget(product: element))
                .toList())));
  }
}

class ProductWidget extends StatelessWidget {
  final CheckProduct product;
  const ProductWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        margin: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 4,
              left: 4,
              child: Checkbox(
                value: product.selected.value,
                onChanged: (value) {
                  print("value of the value is : $value");
                  print("value of product selected before is: " +
                      product.selected.toString());
                  product.selected.value = value!;
                  print("value of product selected after is: " +
                      product.selected.toString());
                },
              ),
            ),
          ],
        ));
  }
}
