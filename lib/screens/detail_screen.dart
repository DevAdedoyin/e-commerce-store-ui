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
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: List.generate(
                          3,
                          (index) => Container(
                                color: Colorz.white,
                              )),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
        expandedChild: Container(),
      ),
    );
  }
}
