part of 'category_cubit.dart';

@immutable
abstract class MyState {}

class MyInitial extends MyState {}

class GetData extends MyState {
  final List<CategoryModel> categoryData;

  GetData(this.categoryData);
}
