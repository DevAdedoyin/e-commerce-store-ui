import 'package:e_commerce_store_ui/state/pageview_state.dart';
import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:e_commerce_store_ui/widgets/expanded_child.dart';
import 'package:e_commerce_store_ui/widgets/preview_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: DraggableBottomSheet(
        backgroundWidget: SizedBox(
          child: PageView.builder(
            itemCount: _bgImages.length,
            onPageChanged: (page) {
              PageviewConnector.pageview.currentPage.value = page;
            },
            itemBuilder: (_, index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    _bgImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        previewChild: const SingleChildScrollView(child:  PreviewChild()),
        expandedChild: SingleChildScrollView(child: ExpandedChild()),
        minExtent: 300,
        maxExtent: 560,
      ),
    );
  }

  final List<String> _bgImages = [
    'https://images.asos-media.com/products/asos-design-double-breasted-coat-in-black/23385810-1-black?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/stradivarius-double-breasted-blazer-in-black/202114414-1-black?\$n_320w\$&wid=317&fit=constrain',
    'https://images.asos-media.com/products/mango-double-breasted-blazer-in-black/201362444-1-black?\$n_320w\$&wid=317&fit=constrain',
  ];
}
