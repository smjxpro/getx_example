import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';

abstract class IHomeRepository {
  Future<Cases?> getCases();
}
