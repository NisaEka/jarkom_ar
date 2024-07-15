import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkom_ar/const/color_const.dart';
import 'package:jarkom_ar/model/componen_model.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ComponentScreen extends StatelessWidget {
  final Components components;

  const ComponentScreen({super.key, required this.components});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              color: primaryColor,
              width: Get.width,
              height: 40,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
          components.image == null
              ? const Center(
                  child: Text("Model Error"),
                )
              : ModelViewer(
                  backgroundColor: Colors.transparent,
                  src: components.image ?? '',
                  ar: true,
                  autoRotate: true,
                  autoPlay: true,
                ),
          Positioned(
            top: 25,
            left: 20,
            child: IconButton.filled(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => Get.bottomSheet(
                enableDrag: true,
                isDismissible: true,
                StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: whiteColor),
                    child: Text(components.text ?? ''),
                  );
                }),
              ),
              child: Text(
                components.name ?? '',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
