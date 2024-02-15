import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/cubits/category_cubit/cubit/category_cubit.dart';
import 'package:furniture_app/cubits/products_cubit/product_cubt.dart';

import '../di/depencenecy_injection.dart';
import '../widgets/app_bar/app_bar_widget.dart';
import '../widgets/body/category_item_listview.dart';
import '../widgets/body/for_you_item_listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Browsers by categories',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) => getIt<MyCubit>(),
                child: const CategoryItemListView(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Recommended for you',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) => getIt<MyProductCubit>(),
                child: const ForYouItemListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
