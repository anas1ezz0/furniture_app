// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:furniture_app/models/category_model.dart';

// import '../../constants.dart';
// import '../../cubits/category_cubit/cubit/category_cubit.dart';

// class CategoryItem extends StatefulWidget {
//   const CategoryItem({super.key});

//   @override
//   State<CategoryItem> createState() => _CategoryItemState();
// }

// class _CategoryItemState extends State<CategoryItem> {
//   List<CategoryModel> categoryData = [];
//   CategoryModel categoryModel = CategoryModel();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   BlocProvider.of<MyCubit>(context).emitCategoryData();
//   //   // BlocProvider.of<MyCubit>(context).emitUserDetails(6006975);
//   //   // BlocProvider.of<MyCubit>(context).emitCreateNewUser(Users(
//   //   //   email: 'anas3ez@gmail.com',
//   //   //   gender: 'male',
//   //   //   name: 'anos',
//   //   //   status: 'active',
//   //   // ));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 15.0),
//       child: Container(
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//               color: kSecondaryColor, borderRadius: BorderRadius.circular(22)),
//           child: Column(
//             children: [
//               Image.network(
//                 categoryData[].image.toString(),
//                 fit: BoxFit.cover,
//               ),
//               Text(
//                 categoryModel.title!,
//                 style:
//                     const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 "${categoryModel.numOfProducts}",
//                 style: const TextStyle(fontSize: 15),
//               ),
//             ],
//           )),
//     );
//   }
// }
