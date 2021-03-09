import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';
import 'package:getx_example/app/modules/home/domain/repositories/i_home_repository.dart';

class GetCasesUseCase {
  final IHomeRepository homeRepository;

  GetCasesUseCase(this.homeRepository);

  Future<Cases?> call() {
    return homeRepository.getCases();
  }
}
