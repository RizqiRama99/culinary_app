import 'package:culinary_apps/main.dart';
import 'package:culinary_apps/models/menu_alacarte.dart';
import 'package:culinary_apps/pages/DetailScreen/detail_screen_page.dart';
import 'package:flutter/material.dart';

class DaftarMenuList extends StatelessWidget {
  const DaftarMenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mainPadding),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return GridView.count(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            padding: const EdgeInsets.only(
              bottom: mainPadding * 1.5,
            ),
            children: menuAlacarteList.map(
              (menu) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return DetailPage(menu: menu);
                        }),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: Image.asset(
                              menu.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            menu.title,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            "Rp. ${menu.price}.000",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          );
        },
      ),
    );
  }
}
