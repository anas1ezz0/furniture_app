import 'package:dio/dio.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
import '../constants.dart';
import '../models/category_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConst.categories)
  Future<List<CategoryModel>> getData();

  @GET(ApiConst.products)
  Future<List<ProductsModel>> getproduct();
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  // );
}
