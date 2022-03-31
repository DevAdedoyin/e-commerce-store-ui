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
      // color: Colorz.primaryColor,
      width: 150,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: SizedBox(
              height: 120,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(itemName!), Text('\$$itemPrice')],
              ),
            ),
          )
        ],
      ),
    );
  }
}
