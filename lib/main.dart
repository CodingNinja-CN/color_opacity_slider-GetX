import 'package:color_opacity_slider/opacity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Color Opacity Slider',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Color Opacity - GetX"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Obx(
                () => Container(
                  color: Colors.black.withOpacity(controller.opacity.value),
                  height: 300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => Slider(
                activeColor: Colors.black,
                thumbColor: Colors.black,
                  value: controller.opacity.value,
                  onChanged: (value) {
                    controller.changeOpacity(value);
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
