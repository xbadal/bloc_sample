import 'package:bloc_sample/model/user/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: '/tasks')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('{id}')
  Future<User> login(@Path('id') String id);

}
