import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/appbar.dart';
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
              categories.length,
              (index) => Chip(
                label: Text(categories[index]),
                backgroundColor:
                    index != 0 ? Colorz.ghostWhite : Colorz.pinkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> categories = const [
    'Coats',
    'Dresses',
    'Jersey',
    'Pants',
  ];

  final List<String> imageUrls = [
    'https://images.asos-media.com/products/asos-design-double-breasted-coat-in-black/23385810-1-black?\$n_240w\$&wid=40&fit=constrain',
    'https://images.asos-media.com/products/forever-new-smart-collar-pea-coat-in-black/200414986-1-black?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/mango-tailored-pea-coat-in-light-blue/201685473-1-blue?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/forever-new-curve-top-faux-fur-collar-coat-in-grey/200987180-1-grey?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/forever-new-petite-smart-collar-pea-coat-in-grey/200460866-1-cream?\$n_320w\$&wid=317&fit=constrain'
  ];
}
