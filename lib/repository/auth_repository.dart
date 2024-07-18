import 'package:provider_mvvm/data/network/baseapi_service.dart';
import 'package:provider_mvvm/data/network/networkapi_service.dart';
import 'package:provider_mvvm/res/components/app_url.dart';

class AuthRepository {
  BaseApiService _apiservice = NetworkApiservice();

  Future<dynamic> login(dynamic data) async {
    try {
      dynamic response = _apiservice.getPostApiResponse(AppUrl.baseUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> register(dynamic data) async {
    try {
      dynamic response =
          _apiservice.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
