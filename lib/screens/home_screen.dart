import 'package:e_commerce_store_ui/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          )
        ],
      ),
    );
  }
}
