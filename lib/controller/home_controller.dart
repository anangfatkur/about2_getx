import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    // TODO: implement onInit
    print("oninit");
    //Note ........Worrkers

    // ever(
    //   count,
    //   (_) => print("dijalankan "),
    // );

    // everAll(
    //   [count, data],
    //   (_) => print("dijalankan "),
    // );

    // once(
    //   count,
    //   (_) => print("dijalankan "),
    // );

    // debounce(
    //   count,
    //   (_) => print("dijalankan "),
    //   time: Duration(seconds: 3),
    // );
    
    interval(
      count,
      (_) => print("dijalankan "),
      time: Duration(seconds: 3),
    );

    super.onInit();
  }
}
