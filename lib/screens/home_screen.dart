import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/appbar.dart';
import 'package:e_commerce_store_ui/widgets/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppbar(
            widget: SizedBox(
              height: 42,
              width: 42,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile_img.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              _categories.length,
              (index) => Chip(
                label: Text(_categories[index]),
                backgroundColor:
                    index != 0 ? Colorz.ghostWhite : Colorz.pinkColor,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            // color: Colorz.pinkColor,
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                // itemExtent: 10,

                itemCount: _imageUrls.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => CustomCard(
                      imageUrl: _imageUrls[index],
                      itemName: _itemName[index],
                      itemPrice: _itemPrice[index],
                    )),
          )
        ],
      ),
    );
  }

  final List<String> _categories = const [
    'Coats',
    'Dresses',
    'Jersey',
    'Pants',
  ];

  final List<String> _imageUrls = [
    'https://images.asos-media.com/products/asos-design-double-breasted-coat-in-black/23385810-1-black?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/forever-new-smart-collar-pea-coat-in-black/200414986-1-black?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/mango-tailored-pea-coat-in-light-blue/201685473-1-blue?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/asos-design-shower-resistant-double-breasted-trench-coat-in-stone/22855673-1-stone?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/vero-moda-long-trench-coat-in-black/202064783-1-black?\$n_320w\$&wid=317&fit=constrain'
  ];

  final List<String> _itemName = [
    'Double Breasted',
    'Smart Collar Pea',
    'Tailored Pea',
    'Shower Resistant',
    'Vero-Moda Long'
  ];

  final List<String> _itemPrice = ['50', '43', '47', '47', '49'];
}
