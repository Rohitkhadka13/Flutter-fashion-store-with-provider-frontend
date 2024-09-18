import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/back_button.dart';
import 'package:stylesage/common/widgets/reusable_text.dart';
import 'package:stylesage/src/categories/controllers/category_notifier.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:AppBackButton() ,
        title: ReusableText(
          text: context.read<CategoryNotifier>().category,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
    );

  }
}
