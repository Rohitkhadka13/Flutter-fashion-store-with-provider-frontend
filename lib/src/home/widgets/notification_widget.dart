
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/widgets/login_bottom_sheet.dart';

import '../../../common/services/storage.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        if(Storage().getString('accessToken')==null){
          loginBottomSheet(context);
        }else {
          context.push("/notification");
        }
        },
      child: Padding(padding: EdgeInsets.only(right: 12.w),
      child: CircleAvatar(
        backgroundColor: Kolors.kGrayLight.withOpacity(.3),
        child: Badge(
          label: Text('5'),
          child: Icon(Ionicons.notifications,color: Kolors.kPrimary,),
        ),
      ),),

    );
  }
}
