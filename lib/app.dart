import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/features/authentication/screens/splash_screen/splash_screen.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'U Store',
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
