import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stylesage/common/widgets/login_bottom_sheet.dart';
import 'package:stylesage/const/constants.dart';
import 'package:stylesage/src/products/widgets/staggered_tile.dart';

import '../../../common/services/storage.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: List.generate(products.length, (i) {
          final double mainAxisCellCount = (i % 2 == 0 ? 2.17 : 2.4);
          final product = products[i];
          return StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: mainAxisCellCount,
              child: StaggeredTileWidget(
                onTap: () {
                  if (accessToken == null) {
                    loginBottomSheet(context);
                  }else{

                  }
                },
                product: product,
                i: i,
              ));
        }),
      ),
    );
  }
}
