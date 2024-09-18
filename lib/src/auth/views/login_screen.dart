import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/common/widgets/back_button.dart';
import 'package:stylesage/common/widgets/custom_button.dart';
import 'package:stylesage/common/widgets/email_textfield.dart';
import 'package:stylesage/common/widgets/password_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController = TextEditingController();
  late final TextEditingController _passwordController = TextEditingController();
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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: AppBackButton(
          onTap: (){
            context.go('/home');
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,


      ),
      body: ListView(
        children: [
          SizedBox(height: 160.h,),
          Text("Best Fashion ",
          textAlign: TextAlign.center,
          style: appStyle(13, Kolors.kPrimary, FontWeight.bold),
          ),
          SizedBox(height: 10.h,),
          Text("Hi! Welcome back, You've been missed ",
            textAlign: TextAlign.center,
            style: appStyle(13, Kolors.kGray, FontWeight.normal),
          ),
          SizedBox(height: 25.h,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              EmailTextField(
                radius: 25,
                focusNode: _passwordNode,
                hintText: "Username",
                controller: _usernameController,
                prefixIcon: Icon(CupertinoIcons.profile_circled,size: 20,color: Kolors.kGray,),
                keyboardType: TextInputType.name,
                onEditingComplete: (){
                  FocusScope.of(context).requestFocus(_passwordNode);
                }  ,
               


              ),
              SizedBox(height: 25.h,),
              PasswordField(controller: _passwordController,
              focusNode: _passwordNode,
                radius: 25,
                
              ),
              SizedBox(height: 20.h),
              CustomButton(text: "L o g i n",
              btnWidth: ScreenUtil().screenWidth,
                btnHieght:40 ,
                radius: 20,
              ),
              
              
            ],

          ),
          )


        ],
      ),
      bottomNavigationBar:  Padding(
    padding: EdgeInsets.only(bottom: 20.h), // Adjust as needed
    child: GestureDetector(
    onTap: () {
    context.push("/register");
    },
    child: Text(
    "Do not have an account? Register Here",
    style: appStyle(12, Colors.blue, FontWeight.normal),
    textAlign: TextAlign.center,
    ),
    ),
    ),

    );
  }
}
