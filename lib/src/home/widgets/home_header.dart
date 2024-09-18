import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
          text: AppText.kCategories,
          style: appStyle(13, Kolors.kDark, FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            context.push('/categories');
          },
          child: ReusableText(
              text: AppText.kViewAll,
              style: appStyle(13, Kolors.kGray, FontWeight.normal)),
        )
      ],
    );
  }
}
