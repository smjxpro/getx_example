import 'package:getx_example/app/modules/home/data/data_sources/home_api_provider.dart';
import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';
import 'package:getx_example/app/modules/home/domain/repositories/i_home_repository.dart';

class HomeRepository implements IHomeRepository {
  final IHomeProvider provider;

  HomeRepository(this.provider);

  @override
  Future<Cases?> getCases() async {
    final cases = await provider.getCases("/summary");
    if (cases.status.hasError) {
      return Future.error(cases.statusText!);
    } else {
      return cases.body;
    }
  }
}
