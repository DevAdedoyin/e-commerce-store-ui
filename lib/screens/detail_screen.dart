import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

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
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 8,
                      width: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
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
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: const BoxDecoration(
                  color: Colorz.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 7,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Colorz.greyColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        expandedChild: Container(),
        minExtent: 300,
      ),
    );
  }
}
