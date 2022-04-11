import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';

class CoatInfoWidget extends StatelessWidget {
  CoatInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 137,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Double Breasted Coat',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '\$ 80',
                style: TextStyle(color: Colors.grey[500], fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Your Size',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: List.generate(
                  4,
                  (index) => SizedBox(
                    width: 30,
                    height: 27,
                    child: Card(
                      color: index == 1 ? Colorz.pinkColor : Colorz.ghostWhite,
                      elevation: 5,
                      child: Center(
                        child: Text(
                          _sizes[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            child: Column(
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  height: index == 0 ? 16 : 13,
                  width: index == 0 ? 16 : 13,
                  decoration: BoxDecoration(
                      color: Colorz.itemColorz[index],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> _sizes = ['S', 'M', 'L', 'XL'];
}