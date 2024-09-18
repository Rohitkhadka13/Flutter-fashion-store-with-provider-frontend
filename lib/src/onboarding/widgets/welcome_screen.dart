import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/custom_button.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/const/resource.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: ScreenUtil().screenHeight,
          ),
          child: Container(
            color: Kolors.kWhite,
            width: ScreenUtil().screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25.h),
                Image.asset(R.ASSETS_IMAGES_GETSTARTED_PNG),
                SizedBox(height: 25.h),
                Text(
                  AppText.kWelcomeHeader,
                  textAlign: TextAlign.center,
                  style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: ScreenUtil().screenWidth - 100,
                  child: Text(
                    AppText.kWelcomeMessage,
                    textAlign: TextAlign.center,
                    style: appStyle(12, Kolors.kGray, FontWeight.normal),
                  ),
                ),
                SizedBox(height: 20.h),
                // Removed Spacer widget
                CustomButton(
                  text: AppText.kstarted,
                  onTap: () {
                    // Storage().setBool('firstOpen', true);
                    context.go('/home');
                  },
                  btnHieght: 35,
                  radius: 20,
                  btnWidth: ScreenUtil().screenWidth - 100,
                ),
                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ReusableText(text: "Already have an account?", style: appStyle(12, Kolors.kDark, FontWeight.normal)),
                    TextButton(onPressed: (){
                      context.go("/login");
                    }, child: Text("Sign In", style: TextStyle(fontSize: 12,color: Colors.blue),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
