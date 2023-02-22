import 'package:chamting_app/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(171),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 33.h),
                      CustomTextField(
                        controller: emailController,
                        maxLines: 1,
                        hint: "email",
                        suffix: const Icon(Icons.email),
                        obscure: false,
                      ),
                      SizedBox(height: 12.h),
                      CustomTextField(
                        controller: passwordController,
                        maxLines: 1,
                        hint: "password",
                        suffix: const Icon(Icons.password),
                        obscure: true,
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        height: 80.h,
                        width: 95.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'forgot password?',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const CustomButton(title: 'Sign in'),
                          ],
                        ),
                      ),
                      SizedBox(height: 53.h),
                      SizedBox(
                        height: 60.h,
                        width: 110.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'got an account? register with',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const CircularButton(
                              image: 'assets/images/google_icon.png',
                            ),
                            const CircularButton(
                                image: 'assets/images/google_icon.png'),
                            const CircularButton(
                                image: 'assets/images/google_icon.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(171),
                  child: Image.asset(
                    'assets/images/LOGIN.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}