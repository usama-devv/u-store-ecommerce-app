import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_store/utils/constants/colors.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      /// Show Loader or Circular Progress Indicator meanwhile authentication repository is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: UColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: UColors.white),
        ),
      ),
    );
  }
}
