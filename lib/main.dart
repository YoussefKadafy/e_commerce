import 'package:e_commerce/core/services/shared_preferences_singltone.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:e_commerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/helper_functions/on_generate_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = Prefs();
  await prefs.init();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.splahName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
    );
  }
}
