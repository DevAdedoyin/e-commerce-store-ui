import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class CustomAppbar extends StatelessWidget {
  final Widget? widget;
  const CustomAppbar({Key? key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget!,
          Badge(
            badgeColor: Colorz.pinkColor,
            badgeContent: const Text('2'),
            child: const Icon(Icons.shopping_cart),
          )
        ],
      ),
    );
  }
}
