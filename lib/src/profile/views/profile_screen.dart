import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:stylesage/common/services/storage.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/custom_button.dart';
import 'package:stylesage/common/widgets/help_bottom_sheet.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/src/auth/views/login_screen.dart';
import 'package:stylesage/src/profile/widget/tile_widget.dart';

import '../../../common/utils/kcolors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            CircleAvatar(
              radius: 35,
              backgroundColor: Kolors.kOffWhite,
              backgroundImage:NetworkImage(AppText.kProfilePic),
            ),
            SizedBox(
              height: 15,
            ),
            ReusableText(
                text: "pp@gmail.com",
                style: appStyle(11, Kolors.kGray, FontWeight.normal)),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Kolors.kOffWhite,
                  borderRadius: BorderRadius.circular(10)),
              child: ReusableText(
                text: "Perfect pp",
                style: appStyle(14, Kolors.kDark, FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          color: Kolors.kOffWhite,
          child: Column(
            children: [
              ProfileTileWidget(
                title: "My Orders",
                leading: Octicons.checklist,
                onTap: () {
                  context.push("/orders");
                },
              ),
              ProfileTileWidget(
                title: "Shipping Address",
                leading: MaterialIcons.location_pin,
                onTap: () {
                  context.push("/addresses");

                },
              ),
              ProfileTileWidget(
                title: "Privacy Policy",
                leading: MaterialIcons.policy,
                onTap: () {
                  context.push("/policy");

                },
              ),
              ProfileTileWidget(
                title: "Help Center",
                leading: AntDesign.customerservice,
                onTap: () => showHelpCenterBottomSheet(context),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: CustomButton(
            text: "Logout".toUpperCase(),
            btnColor: Kolors.kRed,
            btnWidth: ScreenUtil().screenWidth,
            btnHieght: 35,
          ),
        )
      ],
    ));
  }
}
