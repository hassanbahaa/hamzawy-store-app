import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/middleware/middleware.dart';
import 'package:hamzawy_store/view/screen/auth/forget_password/forget_password.dart';
import 'package:hamzawy_store/view/screen/auth/forget_password/reset_password.dart';
import 'package:hamzawy_store/view/screen/auth/forget_password/verify_code.dart';
import 'package:hamzawy_store/view/screen/auth/login.dart';
import 'package:hamzawy_store/view/screen/auth/sign_up/signup.dart';
import 'package:hamzawy_store/view/screen/auth/forget_password/success_reset.dart';
import 'package:hamzawy_store/view/screen/auth/sign_up/signup_verify_code.dart';
import 'package:hamzawy_store/view/screen/auth/sign_up/success_signup.dart';
import 'package:hamzawy_store/view/screen/home/homescreen.dart';
import 'package:hamzawy_store/view/screen/introduction/language.dart';
import 'package:hamzawy_store/view/screen/introduction/onboarding.dart';
import 'package:hamzawy_store/view/screen/items/items.dart';
import 'package:hamzawy_store/view/screen/productdetails.dart';


List<GetPage<dynamic>>? routes = [
// GetPage(name: "/",                            page: () => const ProductDetails()),
  GetPage(name: "/",                                page: () => const Language() , middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.home,                      page: () => const HomeScreen()),
  GetPage(name: AppRoute.items,                     page: () => const Items()),
  GetPage(name: AppRoute.login,                     page: () => const Login()),
  GetPage(name: AppRoute.forgetPassword,            page: () => const ForgetPassword()),
  GetPage(name: AppRoute.forgetVerifyCode,          page: () => const ForgetVerifyCode()),
  GetPage(name: AppRoute.resetPassword,             page: () => const ResetPassword()),
  GetPage(name: AppRoute.successReset,              page: () => const SuccessReset()),
  GetPage(name: AppRoute.signUp,                    page: () => const SignUp()),
  GetPage(name: AppRoute.signUpCheckCode,           page: () => const SignUpVerifyCode()),
  GetPage(name: AppRoute.successSignup,             page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding,                page: () => const OnBoarding()),
  GetPage(name: AppRoute.productdetails,                page: () => ProductDetails()),

];


