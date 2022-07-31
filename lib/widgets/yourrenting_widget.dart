import 'package:flutter/material.dart';
import 'package:homelyMeals/model/product_model.dart';

import 'package:homelyMeals/widgets/custombutton_widget.dart';
import 'package:homelyMeals/widgets/productinformation_wiget.dart';
import '../Screens/product_screen.dart';

class YourRentingWidget extends StatelessWidget {
  final ProductModel productModel;
  const YourRentingWidget({Key? key, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
      child: Container(
        // padding: const EdgeInsets.all(8),
        height: screenSize.height / 3.5,
        width: screenSize.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image.network(productModel.imgurl),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ProductInfoWidget(
                        productname: productModel.productname,
                        catogory: productModel.catagory,
                        rentedby: productModel.rentedby,
                        price: productModel.price,
                        description: productModel.description,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomMainButtonWidget(
                    onPressed: () async {
                      //delete from posted ads
                    },
                    isLoading: false,
                    color: Colors.grey,
                    child: const Text(
                      'Remove',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
