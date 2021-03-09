import 'package:get/get.dart';
import 'package:getx_example/app/modules/home/bindings/home_binding.dart';
import 'package:getx_example/app/modules/home/presentation/pages/country_view.dart';
import 'package:getx_example/app/modules/home/presentation/pages/details_view.dart';
import 'package:getx_example/app/modules/home/presentation/pages/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.COUNTRY, page: () => CountryView(), children: [
            GetPage(name: Routes.DETAILS, page: () => DetailsView()),
          ])
        ]),
  ];
}
