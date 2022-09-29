import 'package:flutter/material.dart';

class FavoriteBtn extends StatefulWidget {
  const FavoriteBtn({Key? key}) : super(key: key);

  @override
  State<FavoriteBtn> createState() => _FavoriteBtnState();
}

class _FavoriteBtnState extends State<FavoriteBtn> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_outline_rounded,
        color: Colors.green,
      ),
      iconSize: 36,
    );
  }
}
