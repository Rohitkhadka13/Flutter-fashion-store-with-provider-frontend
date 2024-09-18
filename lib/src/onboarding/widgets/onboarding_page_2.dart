import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/const/resource.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().scaleWidth,
      height: ScreenUtil().scaleHeight,
      child: Stack(
        children: [
          Image.asset(
            R.ASSETS_IMAGES_WISHLIST_PNG,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 140,
              left: 30,
              right: 30,
              child: Text(
                AppText.kOnboardWishListMessage,
                textAlign: TextAlign.center,
                style: appStyle(11, Kolors.kGray, FontWeight.normal),
              ))
        ],
      ),
    );
  }
}
