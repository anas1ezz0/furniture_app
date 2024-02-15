import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/cubits/category_cubit/cubit/category_cubit.dart';
import 'package:furniture_app/models/category_model.dart';

import '../../constants.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({super.key});

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  List<CategoryModel> categoryData = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).emitCategoryData();
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
    return SizedBox(
      height: 220,
      child: BlocBuilder<MyCubit, MyState>(
        builder: (context, state) {
          if (state is GetData) {
            categoryData = (state).categoryData;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        children: [
                          Image.network(
                            categoryData[index].image!,
                            height: 130,
                          ),
                          Text(
                            categoryData[index].title!,
                            // categoryModel.title!,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${categoryData[index].numOfProducts!} products",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      )),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
