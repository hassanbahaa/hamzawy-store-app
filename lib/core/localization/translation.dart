import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override
  Map<String,Map<String,String>> get keys => {
    "ar": {
      // Auth
      //  auth error message
      "alreadyhave":"لديك حساب بالفعل بهذا البريد الإلكتروني أو الهاتف ، قم بتسجيل الدخول",
      // email fields
      "Email":"البريد الإلكتروني",
      "Email Address":" قم بإدخال البريد الإلكتروني",
      //////////////////////////////////////////////////
      // password fields
      "Password":"كلمة المرور",
      "Type password signup":"قم بإنشاء كلمة المرور",
      "Type new password":"قم بإنشاء كلمة مرور جديدة",
      "Type password":" قم بإدخال كلمة المرور",
      "Confirm password hint":" قم بإعادة إدخال كلمة المرور",
      "Confirm password":"تأكيد كلمة المرور",
      // forget password
      "Forget Password":"هل نسيت كلمة المرور؟",
      "Forget Password s":"نسيت كلمة المرور",
      "Forget Password message":"أدخل البريد الإلكتروني لحسابك الذي تريد إعادة تعيين كلمة المرور الخاصة به!",
      // reset password
      "reset password":"إعادة تعيين كلمة المرور",
      "reset password header":"قم بتعيين كلمة مرور جديدة",
      "reset password body":"قم بتعيين كلمة مرور جديدة لحسابك حتى تتمكن من تسجيل الدخول والوصول إلى جميع الميزات",
      "reset Password success":"لقد قمت بتغيير كلمة مرورك بنجاح",
      "Go to login":"انتقل إلى تسجيل الدخول",
      // verify code
      "verify code":"رمز التحقق",
      "verify code hint":"قم بإدخال رمز التحقق",
      "verify code body":"أدخل رمز التحقق الذي أرسلناه لك عبر بريدك الإلكتروني",
      "verify email":"التحقق من البريد الإلكتروني",
      "check code":"التحقق من الرمز",

      //////////////////////////////////////////////////
      // sign in
      "Sign in":"تسجيل الدخول",
      "Welcome back":"مرحبًا",
      "Sign in message":"قم بتسجيل الدخول بإستخدام البريد الإلكتروني و كلمة المرور او استخدام  حسابات منصات التواصل الاجتماعي",
      "Sign In":"تسجيل الدخول",
      "don't have an account":"ليس لديك حساب؟",
      "incorrect email":"البريد الإلكتروني أو كلمة المرور غير صحيحة. حاول مرة اخرى",
      //////////////////////////////////////////////////
      // Sign up
      "Choose language":"اختر اللغة",
      "Save":"حفظ",
      "check email":"فحص البريد الإلكتروني",
      "check":"فحص",
      "have account":"لديك حساب بالفعل؟",
      "Sign Up":"إنشاء حساب",
      "Full Name":"الأسم",
      "Username":"اسم المستخدم",
      "Type Full Name":"قم بإدخال الاسم",
      "Type username":"قم بإدخال اسم المستخدم",
      "Create account":"إنشاء حساب",
      "Sign up message":"قم بإنشاء حسابك واستمتع بعروضنا الخاصة",
      "Congratulations!":"تهانينا!",
      "signup success message":"تم تسجيل الحساب بنجاح , قم بتسجيل الدخول للوصول إلى جميع الميزات",


      // Input validation
      "valid username":"اسم مستخدم غير صالح",
      "valid email":"بريد إلكتروني غير صالح",
      "valid phone":"رقم الهاتف غير صالح",
      "short":"لا يمكن أن يكون أقل من ",
      "long":"لا يمكن أن يكون أكثر من ",
      "empty":"لا يمكن أن تكون فارغة",
      "password match":"كلمة المرور غير متطابقة",

      "exit":"الخروج",
      "exitbody":"هل تريد الخروج؟",
      "cancel":"الغاء",

      // OnBoarding Start
          // onboarding title
          "onboarding1title":"اختر المنتجات",
          "onboarding2title":"دفع سهل وآمن",
          "onboarding3title":"تتبع طلبك",
          "onboarding4title":"توصيل سريع",
          // onboarding body
          "onboarding1body":"لدينا اكثر من 100 ألف منتج , اختر  منتج من متجرنا.",
          "onboarding2body":"طريقة دفع سهلة وعملية دفع آمنة. موثوق به من قبل عملائنا  من جميع أنحاء العالم.",
          "onboarding3body":"تم استخدام أفضل أداة تعقب  لتتبع طلبك. ستعرف مكان  منتجك في الوقت الحالي.",
          "onboarding4body":"تسليم موثوق وسريع. نحن  نقدم منتجك بأسرع طريقة ممكنة",
      // OnBoarding End












    },
    "en":{
      // Auth
      "alreadyhave":"you already had an account with this email or phone, sign in",
          // email fields
            "Email":"Email",
            "Email Address":"Enter your Email Address",
          //////////////////////////////////////////////////
          // password fields
            "Password":"Password",
            "Type password":" Enter your password",
            "check email":"Check Email",
            "check":"Check",
            "Type password signup":" Set your password",
            "Confirm password hint":"Re-type your password",
            "Confirm password":"Confirm password",
            "Type new password":"Set new password",
                // forget password
                "Forget Password":"Forget Password?",
                "Forget Password s":"Forget Password",
                "Forget Password message":"Provide your account email for which you want to reset your password!",
                // reset password
                "reset password":"Reset Password",
                "reset password header":"Set new password",
                "reset password body":"Set a new password for your account so you can login and access all the features",
                "reset Password success":"you have successfully change your password",
                "Go to login":"Go to login",

                // verify code
                "verify code":"Verification Code",
                "check code":"Check Code",
                "verify code body":"Enter the verification code that we sent you through your email",
                "verify code hint":"Type verification code",
                "Save":"Save",

      //////////////////////////////////////////////////
          // sign in
            "Sign in":"Sign in",
            "Welcome back":"Welcome back",
            "Sign in message":"Sign in with your email & password or continue with social media accounts",
            "Sign In":"Sign In",
            "don't have an account":"Don't have an account?",
      "incorrect email":"incorrect email or password. please try again",
          //////////////////////////////////////////////////
          // Sign up
            "Create account":"Create account",
            "Choose language":"Choose language",
            "Sign up message":"Sign up and enjoy our special offers",
            "have account":"Have an account?",
            "Sign Up":"Sign Up",
            "Full Name":"Full Name",
            "Username":"Username",
            "Type Full Name":"Type your name",
            "Type username":"Type username",
            "verify email":"Verify Email",
            "Congratulations!":"Congratulations!",
            "signup success message":"you have successfully signed up, login to access all features",
      // Input validation
      "valid username":"not valid username",
      "valid email":"not valid email",
      "valid phone":"not valid phone number",
      "short":"can't be less than ",
      "long":"can't be more than ",
      "empty":"can't be empty",
      "password match":"The password doesn't match",



      "exit":"Exit",
      "exitbody":"Do you want to exit?",
      "cancel":"Cancel",

      // onboarding1 title
      "onboarding1title":"Choose Products",
      "onboarding2title":"easy & safe payment",
      "onboarding3title":"track your order",
      "onboarding4title":"fast delivery",

      // onboarding1 body
      "onboarding1body":"We have a +100k procudts, Choose  your product from our shop.",
      "onboarding2body":"easy check out & safe payment  method. trusted by our customers  from all over the world.",
      "onboarding3body":"best tracker has been used for  track your order. you'll know where  your product is at the moment.",
      "onboarding4body":"reliable and fast delivery. we  deliver your product the fastest  way possible",
      ///////////////////////////

    }
  };
}