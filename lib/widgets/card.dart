import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? imageUrl;
  final String? itemName;
  final String? itemPrice;
  const CustomCard({Key? key, this.imageUrl, this.itemName, this.itemPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorz.white,
      child: Column(
        children: [
          Expanded(flex: 8, child: Image.network(imageUrl!)),
          Expanded(
            flex: 2,
            child: SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text(itemName!), Text('\$$itemPrice')],
            )),
          )
        ],
      ),
    );
  }
}
