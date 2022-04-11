import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final imageUrl = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: DraggableBottomSheet(
        backgroundWidget: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                imageUrl['image-link'],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        previewChild: SizedBox(
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
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 8,
                      width: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        color: Colorz.ghostWhite,
                        borderRadius: BorderRadius.circular(20),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
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
                    Container(
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
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 18),
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
                                      color: index == 1
                                          ? Colorz.pinkColor
                                          : Colorz.ghostWhite,
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
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 7),
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
                    ),
                    SizedBox(
                      // margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 350,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add to Cart'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
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
        ),
        expandedChild: Container(),
        minExtent: 278,
      ),
    );
  }

  final List<String> _sizes = ['S', 'M', 'L', 'XL'];
}
