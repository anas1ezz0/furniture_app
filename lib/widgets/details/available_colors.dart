import 'package:flutter/material.dart';
import 'package:furniture_app/models/product_model.dart';

class AvailableColors extends StatefulWidget {
  const AvailableColors({
    super.key,
    // required this.product,
  });
  // final ProductsModel product;

  @override
  State<AvailableColors> createState() => _AvailableColorsState();
}

class _AvailableColorsState extends State<AvailableColors> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isActive1 = !isActive1;
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black),
                    child: isActive1
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // isActive = !isActive;
                    setState(() {
                      isActive2 = !isActive2;
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: isActive2
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      isActive3 = !isActive3;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: isActive3
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
