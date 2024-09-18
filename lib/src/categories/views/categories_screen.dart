import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/utils/kstrings.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/back_button.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/const/constants.dart';
import 'package:stylesage/src/categories/controllers/category_notifier.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackButton(),
        title: ReusableText(
          text: AppText.kCategories,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, i) {
            final category = categories[i];
            return ListTile(
              onTap: () {
                context
                    .read<CategoryNotifier>()
                    .setCategory(category.title, category.id);
                context.push("/category");
              },
              leading: CircleAvatar(
                backgroundColor: Kolors.kSecondaryLight,
                radius: 18,
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: SvgPicture.network(category.imageUrl),
                ),
              ),
              title: ReusableText(
                text: category.title,
                style: appStyle(12, Kolors.kGray, FontWeight.normal),
              ),
              trailing: Icon(
                MaterialCommunityIcons.chevron_double_right,
                size: 18,
              ),
            );
          }),
    );
  }
}
