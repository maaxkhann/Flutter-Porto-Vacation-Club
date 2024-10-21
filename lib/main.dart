import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projectcore/presentation/views/splash_screen.dart';
import 'package:projectcore/shared/theme/light_theme.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await AppLocal.ins.initStorage();
  // await DI.initDI();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GetMaterialApp(
      title: 'Porto Vacation Club',
      debugShowCheckedModeBanner: false,
      //   themeMode: ref.watch(themeProvider),
      theme: lightTheme,
      //  darkTheme: darkTheme,
      // supportedLocales: AppLocalization.supportedLocales,
      // locale: ref.watch(localizationProvider),
      // localizationsDelegates: const [
      //   AppLocalization.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate
      // ],
      // navigatorKey: navigatorKey,
      // onGenerateRoute: RouteGenerator.generateRoute,
      // initialRoute: DummyScreen.routeName,
      // home: const SplashScreen(),
      home: const SplashScreen(),
    );
  }
}
