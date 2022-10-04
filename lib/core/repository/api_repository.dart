import 'package:dio/dio.dart';
import 'package:demo/core/services/services.dart';
import 'package:demo/core/utils/url.dart';

import '../api_model/payment_status_model.dart';

class APIRepository {
  final ApiClient apiService = ApiClient(Dio(), baseUrl: ServicesConstant.jsonUrl);

  Future<GetPaymentStatus> getPaymentData(String header) {
    return apiService.getUsers(header).catchError((onError) {
      throw onError;
    });
  }
}
