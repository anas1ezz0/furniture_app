import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product_model.dart';

import '../widgets/details/available_colors.dart';
import '../widgets/details/texts_details_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  // double defaultSize = SizeConfig.defaultSize!;
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.card_travel_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextsDetailsWidget(
                        product: product,
                      ),
                      const AvailableColors(),
                    ],
                  ),
                ),

                // const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 150),
                  child: Hero(
                    tag: product.id!,
                    child: Image.network(
                      product.image!,
                      fit: BoxFit.cover,
                      height: 300,

                      // width: 240,
                      // width: 245,
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),
            Text(
              product.title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              product.description!,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(bottom: 40.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 50,
            //     decoration: BoxDecoration(
            //         color: kPrimaryColor,
            //         borderRadius: BorderRadius.circular(15)),
            //     child: const Center(
            //       child: Text(
            //         'Add to Cart',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //             fontWeight: FontWeight.w600),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:furniture_app/constants.dart';

// class ProductDetails extends StatelessWidget {
//   const ProductDetails({super.key});

//   // final Product product;

//   // const Body({Key key, this.product}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // double defaultSize = SizeConfig.defaultSize;
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Stack(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const ProductInfo(),
//             const Positioned(
//               // top: defaultSize * 37.5,
//               left: 0,
//               right: 0,
//               child: ProductDescription(
//                   // product: product,
//                   // press: () {},
//                   ),
//             ),
//             Positioned(
//               // top: defaultSize * 9.5,
//               // right: -defaultSize * 7.5,
//               child: Image.asset(
//                 'assets/chair.png',
//                 // product.image,
//                 fit: BoxFit.cover,
//                 // height: defaultSize * 37.8, //378
//                 // width: defaultSize * 36.4,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductInfo extends StatelessWidget {
//   const ProductInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // double defaultSize = SizeConfig.defaultSize;
//     TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
//     return Container(
//       // padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
//       // height: defaultSize * 37.5, //375
//       // width: defaultSize *
//       // (SizeConfig.orientation == Orientation.landscape ? 35 : 15), //150
//       // color: Colors.black45,
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('afafvas',
//                 // product.category.toUpperCase(),
//                 style: lightTextStyle),
//             // SizedBox(height: defaultSize),
//             const Text(
//               'title',
//               // product.title,
//               style: TextStyle(
//                 // fontSize: defaultSize * 2.4, //24
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: -0.8,
//                 height: 1.4,
//               ),
//             ),
//             // SizedBox(height: defaultSize * 2),
//             Text("Form", style: lightTextStyle),
//             const Text(
//               'price',
//               // "\$${product.mprice}",
//               style: TextStyle(
//                 // fontSize: defaultSize * 1.6, //16
//                 fontWeight: FontWeight.bold,
//                 height: 1.6,
//               ),
//             ),
//             // SizedBox(height: defaultSize * 2), //20
//             Text("Available Colors", style: lightTextStyle),
//             // Row(
//             //   children: <Widget>[
//             //     buildColorBox(
//             //       defaultSize,
//             //       color: Color(0xFF7BA275),
//             //       isActive: true,
//             //     ),
//             //     buildColorBox(
//             //       defaultSize,
//             //       color: Color(0xFFD7D7D7),
//             //     ),
//             //     buildColorBox(
//             //       defaultSize,
//             //       color: kTextColor,
//             //     ),
//             //   ],
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ignore: non_constant_identifier_names
// class ProductDescription extends StatelessWidget {
//   const ProductDescription({super.key});

//   // const ProductDescription({
//   //   Key key,
//   //   @required this.product,
//   //   this.press,
//   // }) : super(key: key);

//   // final Product product;
//   // final Function press;

//   @override
//   Widget build(BuildContext context) {
//     // double defaultSize = SizeConfig.defaultSize;
//     return Container(
//       // constraints: BoxConstraints(minHeight: defaultSize * 44),
//       // padding: EdgeInsets.only(
//       //   top: defaultSize * 9, //90
//       //   left: defaultSize * 2, //20
//       //   right: defaultSize * 2,
//       // ),
//       // height: 500,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//             // topLeft: Radius.circular(defaultSize * 1.2),
//             // topRight: Radius.circular(defaultSize * 1.2),
//             ),
//       ),
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Text(
//               'Tieton Armchair',
//               style: TextStyle(
//                 // fontSize: defaultSize * 1.8,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             // SizedBox(height: defaultSize * 3),
//             Text(
//               'product.description,',
//               style: TextStyle(
//                 color: kTextColor.withOpacity(0.7),
//                 height: 1.5,
//               ),
//             ),
//             // SizedBox(height: defaultSize * 3),
//             SizedBox(
//               width: double.infinity,
//               child: FloatingActionButton(
//                 backgroundColor: kPrimaryColor,
//                 onPressed: () {},
//                 // padding: EdgeInsets.all(defaultSize * 1.5),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 // color: kPrimaryColor,
//                 // onPressed: press,
//                 child: const Text(
//                   "Add to Cart",
//                   style: TextStyle(
//                     color: Colors.white,
//                     // fontSize: defaultSize * 1.6,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
