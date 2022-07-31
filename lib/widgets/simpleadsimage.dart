import 'package:flutter/material.dart';
import 'package:homelyMeals/Screens/product_screen.dart';
import 'package:homelyMeals/model/product_model.dart';

class SampleAdsImage extends StatelessWidget {
  final ProductModel productModel;
  const SampleAdsImage({Key? key, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductScreen(productModel: productModel);
            },
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(productModel.imgurl),
          ),
        ),
      ),
    );
  }
}
