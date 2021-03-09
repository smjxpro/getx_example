import 'package:get/get.dart';
import 'package:getx_example/app/modules/home/data/data_sources/home_api_provider.dart';
import 'package:getx_example/app/modules/home/data/repositories/home_repository.dart';
import 'package:getx_example/app/modules/home/domain/repositories/i_home_repository.dart';
import 'package:getx_example/app/modules/home/presentation/manager/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
