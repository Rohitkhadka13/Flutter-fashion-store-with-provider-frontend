import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/const/constants.dart';

import '../../../common/utils/kcolors.dart';
import '../../../common/widgets/app_style.dart';
import '../controller/colors_sizes_notifier.dart';
import '../controller/product_notifier.dart';

class ColorSelectionWidget extends StatelessWidget {
  const ColorSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsSizesNotifier>(builder: (context, controller, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            context.read<ProductNotifier>().product!.colors.length, (i) {
          String c = context.read<ProductNotifier>().product!.colors[i];
          return GestureDetector(
            onTap: () {
              controller.setcolor(c);
            },
            child: Container(
              padding: EdgeInsets.only(right: 20.h,left: 20.h),
              margin: EdgeInsets.only(right: 20.h),
              decoration: BoxDecoration(
                borderRadius: kRadiusAll,
                color: c == controller.color ? Kolors.kPrimary : Kolors.kGrayLight,

              ),
              child: ReusableText(
                text: c,
                style: appStyle(12, Kolors.kWhite, FontWeight.normal),

              ),

            ),
          );
        }),
      );
    });
  }
}
