import 'package:culinary_apps/colors/colors.dart';
import 'package:culinary_apps/pages/home/components/alacarte_menu_list.dart';
import 'package:culinary_apps/pages/home/components/paket_menu_list.dart';
import 'package:culinary_apps/pages/home/components/title_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:culinary_apps/pages/home/components/header_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: const Size(60, 36),
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    elevation: 0,
    backgroundColor: greenPrimary,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(size: size),
              //Menu Alacarte
              TitlewithButtonSection(
                flatButtonStyle: flatButtonStyle,
                title: "Daftar Menu Paket",
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 8),
                child: DaftarMenuPaketList(),
              ),
              //Menu Alacarte
              TitlewithButtonSection(
                flatButtonStyle: flatButtonStyle,
                title: "Daftar Menu",
              ),
              // Item List
              const DaftarMenuList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: greenPrimary,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      title: const Text(
        "MaMam",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}
