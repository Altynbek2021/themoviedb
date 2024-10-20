import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/appcolors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen.dart';
import 'package:themoviedb/widgets/movie_details/movie_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.mainDarkBlue),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDarkBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/auth": (context) => const AuthWidget(),
        "/main_screen": (context) => const MainScreen(),
        "/main_screen/movie_details": (context) {
          // final id = ModalRoute.of(context)!.settings.arguments as int;
          // print("++++++++++++++++++++++++++++++++++++++: $id");
          return MovieDetailsWidget(movieId: 1);
        }
      },
      initialRoute: '/auth',
    );
  }
}
