import 'package:get/get.dart';

class HomeController extends GetxController {
  final chipsLabels = ["Filmes", "Personagens", "Favoritos"];
  final currentLabel = "Filmes".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment(String newIndex) => currentLabel.value = newIndex;
}
