import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';
import 'package:grocery_app/config/custom_textstyle.dart';
import 'package:grocery_app/screens/pages/verify_page/verify.dart';
import 'package:grocery_app/screens/wigets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;

  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50,left: 20),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color:CustomColor.backgroundColors,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_rounded,color: CustomColor.primaryColors)),
            ),
            const SizedBox(height: 25,),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child:  Text("Let's Get Started",style:CustomTextStyle.titleTextStyle,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Create account to see top pick for you!',style: CustomTextStyle.errorStyle.copyWith(color: CustomColor.blurColors,fontSize: 19),),
            ),
            SizedBox(height: 50,),
            TextFiledTile(formkey: formkey),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: isVisible,
                controller: confirmPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  hintText: 'Confirm Password',
                  hintStyle: CustomTextStyle.textStyle,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      child: isVisible
                          ? Icon(
                        Icons.remove_red_eye,
                        color: CustomColor.primaryColors,
                      )
                          : Icon(Icons.visibility_off,
                          color: CustomColor.primaryColors),
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyPage()));
                },
                child: Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: CustomColor.primaryColors,
                    ),
                    child: Center(child: Text('Create Account',style: CustomTextStyle.textStyle.copyWith(color: CustomColor.textColors),))
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(child: Text('or',style: CustomTextStyle.textStyle.copyWith(color: CustomColor.blurColors),)),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CustomColor.eColors,
                ),
                child: Center(child: Text('Continue with Apple',style: CustomTextStyle.textStyle.copyWith(fontWeight: FontWeight.w600),)),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: CustomColor.eColors,
                ),
                child: Center(child: Text('Continue with Google',style: CustomTextStyle.textStyle.copyWith(fontWeight: FontWeight.w600),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
