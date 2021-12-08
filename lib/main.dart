import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PageLain(),
            )),
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
      body: Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterC.add();
      }),
    );
  }
}

class CountWidget extends StatelessWidget {
  final counterC = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      initState: (_) => print("initstate"),
      didChangeDependencies: (state) => print("didChangeDependencies"),
      didUpdateWidget: (oldWidget, state) => print("didUpdateWidget"),
      dispose: (state) => print("dispose"),
      builder: (c) => Text("Angka ${c.count}"),
    );
  }
}

class PageLain extends StatelessWidget {
  const PageLain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
