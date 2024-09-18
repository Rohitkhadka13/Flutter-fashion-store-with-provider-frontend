// import 'package:fashion/common/utils/enums.dart';
// import 'package:fashion/common/utils/kcolors.dart';
// import 'package:fashion/common/utils/packages_exports.dart';
// import 'package:fashion/common/utils/providers_exports.dart';
// import 'package:fashion/common/widgets/app_style.dart';
// import 'package:fashion/common/widgets/reusable_text.dart';
// import 'package:fashion/const/constants.dart';
// import 'package:fashion/const/resource.dart';
// import 'package:flutter/material.dart';

// class FailedPayment extends StatelessWidget {
//   const FailedPayment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: ReusableText(
//             text: "Payment",
//             style: appStyle(16, Kolors.kPrimary, FontWeight.w600)),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Image.asset(
//               R.ASSETS_IMAGES_FAILED_PNG,
//               width: 250.w,
//               height: 250.h,
//             ),
//           ),
//           Center(
//               child: ReusableText(
//             text: 'Payment Failed!',
//             style: appStyle(20, Kolors.kPrimary, FontWeight.w600),
//           )),
//           SizedBox(
//             height: 10.h,
//           ),
//           Center(
//               child: ReusableText(
//             text: 'Oops! Payment Failed! Please Try Again',
//             style: appStyle(14, Kolors.kGray, FontWeight.normal),
//           ))
//         ],
//       ),
//       bottomNavigationBar: GestureDetector(
//         onTap: () {
//           context.read<CartNotifier>().setPaymentUrl('');
//           context
//               .read<NotificationNotifier>()
//               .setReloadCount(NotificationCount.update);
//           context.go('/home');
//         },
//         child: Container(
//           height: 80,
//           width: ScreenUtil().screenWidth,
//           decoration:
//               BoxDecoration(color: Kolors.kPrimary, borderRadius: kRadiusTop),
//           child: Center(
//             child: ReusableText(
//                 text: "Continue to Home",
//                 style: appStyle(16, Kolors.kWhite, FontWeight.w600)),
//           ),
//         ),
//       ),
//     );
//   }
// }