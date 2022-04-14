import 'package:get/get.dart';

class PageviewState extends GetxController {
  final currentPage = 0.obs;
}

class PageviewConnector {
  static final pageview = Get.put(PageviewState());
}
