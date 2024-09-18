import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/utils/kcolors.dart';
import '../../../common/widgets/app_style.dart';
import '../../../common/widgets/back_button.dart';
import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/email_textfield.dart';
import '../../../common/widgets/password_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _emailController = TextEditingController();

  late final TextEditingController _passwordController =
      TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: AppBackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 160.h,
          ),
          Text(
            "Best Fashion ",
            textAlign: TextAlign.center,
            style: appStyle(13, Kolors.kPrimary, FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Hi! Welcome back, You've been missed ",
            textAlign: TextAlign.center,
            style: appStyle(13, Kolors.kGray, FontWeight.normal),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                EmailTextField(
                  radius: 25,
                  hintText: "Username",
                  controller: _usernameController,
                  prefixIcon: Icon(
                    CupertinoIcons.profile_circled,
                    size: 20,
                    color: Kolors.kGray,
                  ),
                  keyboardType: TextInputType.name,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(_passwordNode);
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                EmailTextField(
                  radius: 25,
                  focusNode: _passwordNode,
                  hintText: "Email",
                  controller: _emailController,
                  prefixIcon: Icon(
                    CupertinoIcons.mail,
                    size: 20,
                    color: Kolors.kGray,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(_passwordNode);
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                PasswordField(
                  controller: _passwordController,
                  focusNode: _passwordNode,
                  radius: 25,
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: "S i g n i n",
                  btnWidth: ScreenUtil().screenWidth,
                  btnHieght: 40,
                  radius: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
