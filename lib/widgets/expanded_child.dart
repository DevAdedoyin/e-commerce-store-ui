import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/coat_info.dart';
import 'package:flutter/material.dart';

class ExpandedChild extends StatelessWidget {
  ExpandedChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.bottomRight,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                color: Colors.grey[350],
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: const BoxDecoration(
              color: Colorz.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 6,
                  width: 65,
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                    color: Colorz.greyColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CoatInfoWidget(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      3,
                      (index) => Container(
                        alignment: Alignment.center,
                        width: 90,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: index == 0
                                ? Colorz.pinkColor
                                : Colors.grey[300]),
                        child: Text(
                          _dop[index],
                          style: TextStyle(
                              fontWeight: index == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Composition',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Country',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '100% polyester',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Poland',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: const Text(
                    'Care',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
                  style: TextStyle(
                    fontSize: 15.5,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  // margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 350,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<String> _dop = ['Details', 'Orders', 'Payment'];
}
