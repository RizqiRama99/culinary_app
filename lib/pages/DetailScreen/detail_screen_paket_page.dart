import 'package:culinary_apps/main.dart';
import 'package:culinary_apps/models/menu_paket.dart';
import 'package:culinary_apps/pages/DetailScreen/components/add_to_cart.dart';
import 'package:culinary_apps/pages/DetailScreen/components/favorite_button.dart';
import 'package:culinary_apps/pages/DetailScreen/components/item_counters.dart';
import 'package:flutter/material.dart';

class DetailPagePaket extends StatelessWidget {
  DetailPagePaket({Key? key, required this.menu}) : super(key: key);
  final MenuPaket menu;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: const Size(270, 50),
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.green,
    textStyle: const TextStyle(fontSize: 18),
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 640) {
        return DetailBigScreen(
            size: size, menu: menu, flatButtonStyle: flatButtonStyle);
      } else {
        return DetailMiniScreen(
            size: size, menu: menu, flatButtonStyle: flatButtonStyle);
      }
    });
  }
}
// DetailMiniScreen(size: size, menu: menu, flatButtonStyle: flatButtonStyle);

class DetailMiniScreen extends StatelessWidget {
  const DetailMiniScreen({
    Key? key,
    required this.size,
    required this.menu,
    required this.flatButtonStyle,
  }) : super(key: key);

  final Size size;
  final MenuPaket menu;
  final ButtonStyle flatButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.65,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(menu.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: mainPadding,
                      top: mainPadding,
                    ),
                    //  Revisi Icon Button
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.green.shade500,
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.55,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 12,
                        top: mainPadding,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.7,
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              menu.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ),
                          const FavoriteBtn(),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: mainPadding),
                      child: Row(
                        children: [
                          Text(
                            "Rp. ${menu.price}.000",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: mainPadding,
                        right: mainPadding,
                        top: mainPadding,
                      ),
                      child: Text(
                        menu.desc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: mainPadding,
                        right: mainPadding,
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          ItemCounter(),
                        ],
                      ),
                    ),
                    AddToCartWidget(flatButtonStyle: flatButtonStyle),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailBigScreen extends StatelessWidget {
  const DetailBigScreen({
    Key? key,
    required this.size,
    required this.menu,
    required this.flatButtonStyle,
  }) : super(key: key);

  final Size size;
  final MenuPaket menu;
  final ButtonStyle flatButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.65,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(menu.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: mainPadding,
                    top: mainPadding,
                  ),
                  //  Revisi Icon Button
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: Colors.green.shade500,
                      iconSize: 30,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * 0.5,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: mainPadding,
                            right: mainPadding,
                            top: mainPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 20),
                              child: Text(
                                menu.title,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green.shade700,
                                ),
                              ),
                            ),
                            const FavoriteBtn(),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: mainPadding),
                        child: Row(
                          children: [
                            Text(
                              "Rp. ${menu.price}.000",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: mainPadding,
                          right: mainPadding,
                          top: mainPadding,
                        ),
                        child: Text(
                          menu.desc,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: mainPadding,
                          right: mainPadding,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            ItemCounter(),
                          ],
                        ),
                      ),
                      AddToCartWidget(flatButtonStyle: flatButtonStyle)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
