import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/core/themes.dart';
import 'core/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp.router(
        title: 'Flutter App',
        themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}