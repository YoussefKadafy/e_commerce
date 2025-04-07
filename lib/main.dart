import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/helper_functions/on_generate_routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent, // status bar color
    ),
  );
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.splahName,
      debugShowCheckedModeBanner: false,
    );
  }
}
