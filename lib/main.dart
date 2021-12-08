import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => PageTulisan ()),
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

// class CountWidget extends StatelessWidget {
//   final counterC = Get.find<CounterController>();
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CounterController>(
//       initState: (_) => print("initstate"),
//       didChangeDependencies: (state) => print("didChangeDependencies"),
//       didUpdateWidget: (oldWidget, state) => print("didUpdateWidget"),
//       dispose: (state) => print("dispose"),
//       builder: (c) => Text("Angka ${c.count}"),
//     );
//   }
// }

// class PageLain extends StatelessWidget {
//   const PageLain({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     );
//   }
// }

// class CounterController extends GetxController {
//   var count = 0;

//   void add() {
//     count++;
//     update();
//   }
// }

class PageTulisan extends StatelessWidget {
  final textC = Get.put(TulisanController());
  PageTulisan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tulisan Page"),
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class TulisanController extends GetxController {
  final myC = TextEditingController();
}
