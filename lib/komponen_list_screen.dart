import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkom_ar/const/color_const.dart';
import 'package:jarkom_ar/model/componen_model.dart';

class KomponenListScreen extends StatefulWidget {
  const KomponenListScreen({super.key});

  @override
  State<KomponenListScreen> createState() => _KomponenListScreenState();
}

class _KomponenListScreenState extends State<KomponenListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/cuate.png",
              width: Get.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: Get.width - (Get.width / 2.2),
            height: Get.width - (Get.width / 1.6),
            margin: EdgeInsets.only(
              left: Get.width / 4.3,
              top: Get.width / 30,
            ),
            child: ListView(
              children: items
                  .map(
                    (e) => _listItem(e.name ?? ''),
                  )
                  .toList(),
            ),
          ),
          Positioned(
            right: Get.width / 6,
            bottom: 0,
            child: Image.asset(
              "assets/char.png",
              height: Get.width / 3.5,
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(String title) {
    return Container(
      width: Get.width - (Get.width / 2.2),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: darkColor),
        // color: Colors.grey
      ),
      padding: const EdgeInsets.all(5),
      child: Text(title),
    );
  }

  List<Components> items = [
    Components(
      name: "Motherboard",
    ),
    Components(
      name: "Processor",
    ),
    Components(
      name: "Harddisk",
    ),
    Components(
      name: "SSD",
    ),
    Components(
      name: "RAM",
    ),
    Components(
      name: "VGA Card",
    ),
    Components(
      name: "Sound Card",
    ),
    Components(
      name: "LAN Card",
    ),
    Components(
      name: "FAN",
    ),
    Components(
      name: "Optical Drive",
    ),
    Components(
      name: "Monitor",
    ),
    Components(
      name: "Keyboard",
    ),
  ];
}
