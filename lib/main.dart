import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/counter_app/counter_provider.dart';
import 'package:provider_stateanagement/favourite_app/favourite_provider.dart';
import 'package:provider_stateanagement/favourite_app/favourite_view.dart';
import 'package:provider_stateanagement/slider_app/slider_provider.dart';
import 'package:provider_stateanagement/slider_app/slider_view.dart';
import 'package:provider_stateanagement/theme_changer/theme_changer_provider.dart';
import 'package:provider_stateanagement/theme_changer/theme_changer_view.dart';

import 'counter_app/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print("build");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeChangerProvider(),
        ),
      ],

      child: Builder(
        builder: (context) {
          final changeThemeProvider =Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: changeThemeProvider.themeMode,
            darkTheme:  ThemeData.dark(),
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    color: Colors.teal,
                    titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
                floatingActionButtonTheme: const FloatingActionButtonThemeData(
                    backgroundColor: Colors.teal)),
            title: 'Flutter Demo',
            home: const ThemeChangerView(),
          );
        }
      ),
    );
  }
}