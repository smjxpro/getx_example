import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:getx_example/app/modules/home/data/models/cases_model.dart';

abstract class IHomeProvider {
  Future<Response<CasesModel>> getCases(String path);
}

class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultDecoder = CasesModel.fromJson;
    httpClient.baseUrl = 'https://api.covid19api.com';
  }

  @override
  Future<Response<CasesModel>> getCases(String path) => get(path);
}
