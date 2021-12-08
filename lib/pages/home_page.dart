import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeController = Get.put(HomeController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        actions: [
          IconButton(
            onPressed: () => homeController.reset(),
            icon: Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Obx(
                () => Text(
                  "Terjadi sesuatu : ${homeController.count} x ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 30),
              // ignore: prefer_const_constructors
              TextField(
                onChanged: (_) => homeController.change(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
