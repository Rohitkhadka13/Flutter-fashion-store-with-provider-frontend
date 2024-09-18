import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/src/products/controller/product_notifier.dart';

import '../../../common/utils/kcolors.dart';

class ExpandableText extends StatelessWidget {
  const ExpandableText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.justify,
          maxLines: !context.watch<ProductNotifier>().description ? 2 : 10,
          style: appStyle(13, Kolors.kGray, FontWeight.normal),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                context.read<ProductNotifier>().setdescription();
              },
              child: Text(!context.watch<ProductNotifier>().description
                  ? "View More"
                  : "View Less",
              style: appStyle(11, Kolors.kPrimaryLight, FontWeight.normal),),
            )
          ],
        )
      ],
    );
  }
}
