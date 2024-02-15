import 'package:dio/dio.dart';
import 'package:furniture_app/cubits/products_cubit/product_cubt.dart';

import '../cubits/category_cubit/cubit/category_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

import '../networking/repo.dart';

final getIt = GetIt.instance;
void initGetIt() {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyProductCubit>(() => MyProductCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
}
