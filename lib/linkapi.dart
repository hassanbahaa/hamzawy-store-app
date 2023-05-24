class AppLink{

  static const String server      = "https://hamzawyappstore.000webhostapp.com";
  // static const String server      = "https://google.com";
  static const String test        = "$server/test.php";

  // ======================= Auth ========================= //

  //sign up api
  static const String signup            = "$server/auth/signup.php";
  static const String login             = "$server/auth/login.php";
  static const String verifycode        = "$server/auth/verifycode.php";

  // forget password
  static const String checkemail            = "$server/auth/forgetpassword/checkemail.php";
  static const String resetverifycode             = "$server/auth/forgetpassword/verifycode.php";
  static const String resetpassword        = "$server/auth/forgetpassword/resetpassword.php";

}

