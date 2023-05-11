import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/localization/translation.dart';
import 'package:hamzawy_store/view/screen/introduction/language.dart';
import 'package:hamzawy_store/view/screen/introduction/onboarding.dart';

import 'binding/init_binding.dart';
import 'core/constant/app_theme.dart';
import 'core/constant/color.dart';
import 'core/localization/change_local.dart';
import 'core/services/services.dart';
import 'routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    LocaleController localeController =  Get.put(LocaleController());
    return GetMaterialApp(
      title: 'Hamzawy Store',
      locale: localeController.language,
      translations: MyTranslation(),
      theme: localeController.appTheme,
      debugShowCheckedModeBanner: false,
      // home: Language(),
      initialBinding: initBinding(),
      // routes: routes,
      getPages: routes,
    );
  }
}

