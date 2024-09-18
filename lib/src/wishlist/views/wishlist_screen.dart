import 'package:flutter/material.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/src/products/widgets/explore_products.dart';

import '../../../common/services/storage.dart';
import '../../auth/views/login_screen.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString("accessToken");

    if(accessToken == null){
      return LoginPage();
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ReusableText(
          text: AppText.kWishlist,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExploreProducts(),
      )
    );
  }
}
