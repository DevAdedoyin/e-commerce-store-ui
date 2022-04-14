import 'package:e_commerce_store_ui/state/pageview_state.dart';
import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/coat_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviewChild extends StatelessWidget {
  const PreviewChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 190,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
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
                      color: Colors.black38,
                    )),
              ),
            ),
          ),
          Obx(() {
            return SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Container(
                    height:
                        PageviewConnector.pageview.currentPage.value == index
                            ? 8
                            : 7,
                    width: PageviewConnector.pageview.currentPage.value == index
                        ? 8
                        : 7,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color:
                          PageviewConnector.pageview.currentPage.value == index
                              ? Colorz.ghostWhite
                              : Colorz.greyColor500,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            );
          }),
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
                  margin: const EdgeInsets.symmetric(vertical: 15),
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
}
