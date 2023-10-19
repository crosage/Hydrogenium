import 'package:arknights_offline_helper/pages/base_page.dart';
import 'package:arknights_offline_helper/pages/operator_page.dart';
import 'package:arknights_offline_helper/pages/select_page.dart';
import 'package:get/get.dart';


class AscentRoutes {
  static final List<GetPage> getPages = [
    GetPage(
        name: "/",
        page: () => BasePage()
    ),
    GetPage(
      name: "/operator",
      page: () => OperatorPage(),
    ),
    GetPage(
        name: '/select',
        page: ()=> SelectPage(),
    ),
  ];
}
