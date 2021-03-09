import 'package:get/get.dart';
import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';
import 'package:getx_example/app/modules/home/domain/use_cases/get_cases_use_case.dart';

class HomeController extends SuperController<Cases?> {
  final GetCasesUseCase getCasesUseCase;

  HomeController(this.getCasesUseCase);

  @override
  void onInit() {
    super.onInit();

    append(() => getCases);
  }

  Future<Cases?> getCases() {
    return getCasesUseCase();
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
