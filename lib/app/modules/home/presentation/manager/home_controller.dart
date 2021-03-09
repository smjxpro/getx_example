import 'package:get/get.dart';
import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';
import 'package:getx_example/app/modules/home/domain/repositories/i_home_repository.dart';

class HomeController extends SuperController<Cases> {
  final IHomeRepository homeRepository;

  HomeController(this.homeRepository);

  @override
  void onInit() {
    super.onInit();
    homeRepository.getCases().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
