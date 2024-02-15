import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/cubits/products_cubit/product_cubt.dart';
import 'package:furniture_app/cubits/products_cubit/product_state.dart';
import 'package:furniture_app/models/product_model.dart';

import '../../screens/product_details.dart';

class ForYouItemListView extends StatefulWidget {
  const ForYouItemListView({super.key});

  @override
  State<ForYouItemListView> createState() => _ForYouItemListViewState();
}

class _ForYouItemListViewState extends State<ForYouItemListView> {
  List<ProductsModel> productData = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyProductCubit>(context).emitProductData();
    // BlocProvider.of<MyCubit>(context).emitUserDetails(6006975);
    // BlocProvider.of<MyCubit>(context).emitCreateNewUser(Users(
    //   email: 'anas3ez@gmail.com',
    //   gender: 'male',
    //   name: 'anos',
    //   status: 'active',
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProductCubit, MyProductState>(
      builder: (context, state) {
        if (state is GetProductData) {
          productData = (state).productData;
          return GridView.builder(
              itemCount: productData.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                  product: productData[index],
                                )));
                  },
                  child: ProductItem(
                    product: productData[index],
                  ),
                );
              });
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  // final List<ProductsModel> productData;
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 8, bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            Image.network(
              product.image!,
              width: 90,
              // fit: BoxFit.cover,
            ),
            Text(
              product.title!,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            // const SizedBox(height: 5),
            Text(product.price!.toString()),
          ],
        ),
      ),
    );
  }
}
