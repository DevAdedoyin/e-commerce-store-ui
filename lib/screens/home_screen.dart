import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/appbar.dart';
import 'package:e_commerce_store_ui/widgets/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              height: 300,
              child: ListView.builder(
                  shrinkWrap: true,
                  // itemExtent: 10,

                  itemCount: _imageUrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => CustomCard(
                        imageUrl: _imageUrls[index],
                        itemName: _itemName[index],
                        itemPrice: '\$${_itemPrice[index]}',
                      )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Recommended for You',
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 270,
              child: ListView.builder(
                  shrinkWrap: true,
                  // itemExtent: 10,

                  itemCount: _imageUrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => CustomCard(
                        imageUrl: _recImageUrls[index],
                        itemName: '',
                        itemPrice: '',
                      )),
            ),
          ],
        ),
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

  final List<String> _recImageUrls = [
    'https://images.asos-media.com/products/asos-design-oversized-boucle-coat-in-camel/23420436-1-camel?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/barbour-international-mackney-quilted-coat-in-moss-green/202437082-1-mossgreen?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/vila-trench-coat-with-tie-waist-in-camel/202299354-1-camel?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/asos-design-trench-coat-in-khaki/201103240-1-khaki?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/na-kd-oversized-trench-coat-in-blue/202117781-1-blue?\$n_320w\$&wid=317&fit=constrain'
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
