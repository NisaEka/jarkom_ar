import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkom_ar/componen_screen.dart';
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
            child: Transform.flip(
              flipX: true,
              child: Image.asset(
                "assets/cuate.png",
                width: Get.width,
                fit: BoxFit.fitWidth,
              ),
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
                    (e) => _listItem(e),
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
          ),
          Positioned(
            top: 25,
            left: 20,
            child: IconButton.filled(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(Components e) {
    return GestureDetector(
      onTap: () => Get.to(
        ComponentScreen(components: e),
        transition: Transition.rightToLeftWithFade,
        duration: Duration(seconds: 1),
      ),
      child: Container(
        width: Get.width - (Get.width / 2.2),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: darkColor),
          // color: Colors.grey
        ),
        padding: const EdgeInsets.all(5),
        child: Text(e.name ?? ''),
      ),
    );
  }

  List<Components> items = [
    Components(
        name: "Motherboard",
        image: "assets/motherboard_am4.glb",
        text:
            "Mainboard adalah komponen komputer yang paling utama karena berisi sistem BIOS, chipset, soket processor, soket memori, soket kartu grafis, dan berbagai soket tambahan. Fungsi dari mainboard sendiri adalah untuk meletakan semua komponen yang dibutuhkan dalam sebuah komputer."),
    Components(
        name: "Processor",
        text:
            "Processor atau CPU berfungsi sebagai otak sentral dari sebuah komputer. Processor adalah komponen komputer yang mengerjakan semua perintah yang sudah terprogram dan disimpan dalam bentuk harddisk."),
    Components(
      name: "Harddisk",
      text:
          "Harddisk adalah komponen komputer yang berfungsi sebagai media penyimpanan data permanen. Jadi, data tidak akan hilang meski listrik sudah dimatikan karena berisi cakram magnetik yang mampu menyimpan data.",
    ),
    Components(
      name: "SSD",
      text:
          "SSd adalah suatu komponen untuk menyimpan data menggunakan seperangkat IC (Integrated Circuits). SSD berfungsi untuk menyimpan data secara permanen yang disimpan pada chip memori flash berbasis NAND yang saling terhubung.",
    ),
    Components(
      name: "RAM",
      text:
          "RAM adalah unit penyimpanan dara tidak permanen, artinya data dalam RAM akan hilang jika listrik mati. Dengan demikian, RAM pada komputer berfungsi sebagai memori sementara yang digunakan oleh komputer untuk menjalankan sebuah fungsi dari aplikasi atau perangkat lunak.",
    ),
    Components(
      name: "VGA Card",
      text:
          "VGA adalah singkatan dari Video Graphics Array. VGA card berfungsi untuk mengeluarkan output grafis (gambar) untuk ditampilkan pada layar monitor.",
    ),
    Components(
      name: "Sound Card",
      text:
          "Sound card adalah komponen komputer yang mendekode data-data digital menjadi sinyal suara, Dengan penemuan sound card ini, maka perkembangan dunia multimedia pada komputer menjadi semakin luas.",
    ),
    Components(
      name: "LAN Card",
      text:
          "LAN Card merupakan perangkat keras yang diperlukan komputer untuk dapat berkomunikasi dengan jaringan lain seperti jaringan ethernet dan internet secara nirkabel atau menggunakan kabel.",
    ),
    Components(
      name: "FAN",
      text:
          "Fan atau Kipas pendingin, adalah salah satu kelengkapan pada komputer, fungsi utama dari sebuah kipas komputer adalah mengeluarkan panas dan menggantinya dengan udara segar ke dalam sistem. Kipas pendingin ini telah dirancang agar sesuai ditempatkan pada motherboard atau hard disk drive.",
    ),
    Components(
      name: "Optical Drive",
      text:
          "Optical drive berfungsi sebagai alat pembaca untuk media penyimpan data berupa disk DVD/CD. DVD/CD sendiri merupakan kepingan cakram optik yang berisi data.",
    ),
    Components(
      name: "Monitor",
      text:
          "Monitor adalah komponen komputer yang menampilkan gambar grafis hasil output dari VGA card. Monitor membuat kita bisa melihat segala hal yang ada di dalam komputer.",
    ),
    Components(
      name: "Keyboard",
      text:
          "Keyboard adalah papan ketik yang berisi semua model huruf, angka, karakter, dan tanda baca. Keyboard ini menjadi sarana bagi pengguna komputer untuk memasukkan berbagai data ke dalam komputer.",
    ),
    Components(
      name: "Mouse",
      text:
          "Mouse adalah alat pointer untuk mengakses melalui layar komputer. Dengan kehadiran mouse, maka pengguna komputer menjadi lebih interaktif dan lebih mudah untuk mengoperasikan komputer.",
    ),
  ];
}
