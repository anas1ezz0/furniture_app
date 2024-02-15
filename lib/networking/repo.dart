import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/networking/api_service.dart';

class MyRepo {
  final ApiService apiService;

  MyRepo(this.apiService);

  Future<List<CategoryModel>> getData() async {
    return await apiService.getData();
  }

  Future<List<ProductsModel>> getproduct() async {
    return await apiService.getproduct();
  }
  // Future<Users> getUserById(int userId) async {
  //   return await webService.getUserById(userId);
  // }

  // Future<Users> createNewUser(Users newUser) async {
  //   return await webService.createNewUser(newUser,
  //       'Bearer 07c2b24346737a4d279025526096834784f67ea451884d1627b8cf748748f434');
  // }
}
