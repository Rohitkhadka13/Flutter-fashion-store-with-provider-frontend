import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key, required this.price, this.onPressed});
  final String price;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 68.h,
      color: Colors.white.withOpacity(.6),
      child: Padding(padding: EdgeInsets.fromLTRB(16, 0, 12, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.h,
              width: 120.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: ReusableText(
                    text: "Total Price",
                    style: appStyle(14, Kolors.kGrayLight, FontWeight.w400),
                  ),
                ),
                ReusableText(
                  text: "\$ $price",
                  style: appStyle(16, Kolors.kDark, FontWeight.w600),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Kolors.kPrimary)
            ),
            onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesome.shopping_bag,
                  size: 16,
                      color: Kolors.kWhite,),
                  SizedBox(width: 8,),
                  ReusableText(text: "Checkout", style: appStyle(14, Kolors.kWhite, FontWeight.bold))
                ],
              ),
          )
        ],
      ),
      ),
    );
  }
}
