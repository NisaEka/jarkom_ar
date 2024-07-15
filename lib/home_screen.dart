import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkom_ar/const/color_const.dart';
import 'package:jarkom_ar/komponen_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Belajar Mengenal",
                style: TextStyle(
                  color: whiteColor,
                  height: 1.5,
                  fontSize: 20,
                ),
              ),
              const Text(
                "KOMPONEN\nKOMPUTER",
                style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 50, height: 0.9),
                textAlign: TextAlign.center,
              ),
              FilledButton(
                onPressed: () => Get.to(
                  const KomponenListScreen(),
                  transition: Transition.cupertinoDialog,
                  duration: const Duration(seconds: 1),
                ),
                child: const Text(
                  "Mulai",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          const SizedBox(width: 40),
          Image.asset("assets/computerimg.png")
        ],
      ),
    );
  }
}
