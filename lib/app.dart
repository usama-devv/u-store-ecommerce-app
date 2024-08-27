import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      home: const OnboardingScreen(),
    );
  }
}
