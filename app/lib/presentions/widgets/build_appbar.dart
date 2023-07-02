import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/model/product_model.dart';
import '../pages/views/cart_page.dart';
import '../resourcce/image_manager.dart';
import '../resourcce/theme_manager.dart';

AppBar buildAppBar(List<ProductModel> itemBag, BuildContext context) {
  return AppBar(
    backgroundColor: kSecondaryColor,
    title: SvgPicture.asset(
      ImageManager.storeBrandWhite,
      color: kWhiteColor,
      width: 180,
    ),
    actions: [
      Padding(
          padding: const EdgeInsets.only(right: 20, top: 10),
          child: Badge(
            label: Text(itemBag.length.toString()),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.local_mall,
                  size: 24,
                )),
          ))
    ],
  );
}
