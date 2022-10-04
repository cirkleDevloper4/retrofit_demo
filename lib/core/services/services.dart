import 'package:dio/dio.dart' hide Headers;
import 'package:demo/core/utils/url.dart';
import 'package:retrofit/http.dart';

import '../api_model/payment_status_model.dart';

part 'services.g.dart';

@RestApi(baseUrl: ServicesConstant.jsonUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("payment_links")
  @Headers(<String, dynamic>{
    "Authorization": "application/json",
    "Content-Type": "application/json",
  })
  Future<GetPaymentStatus> getUsers(@Header("Authorization") String header);
}
