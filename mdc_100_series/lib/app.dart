import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';
import 'supplemental/cut_corners_border.dart';

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/': (context) => const HomePage(), // langsung HomePage
      },
      theme: _kShrineTheme,
    );
  }
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headlineSmall: base.headlineSmall?.copyWith(fontWeight: FontWeight.w500),
    titleLarge: base.titleLarge?.copyWith(fontSize: 18.0),
    bodySmall: base.bodySmall?.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0),
    bodyLarge: base.bodyLarge?.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kShrineBlack,
    bodyColor: kShrineBlack,
  );
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink,
      onPrimary: kShrineBlack,
      secondary: kShrinePurple,
      error: kShrineErrorRed,
      surface: kShrineSurface,
      background: kShrineBackground,
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(selectionColor: kShrinePink),
    appBarTheme: const AppBarTheme(
      foregroundColor: kShrineBlack,
      backgroundColor: kShrinePink,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(borderSide: BorderSide(width: 2.0, color: kShrinePurple)),
      floatingLabelStyle: TextStyle(color: kShrinePurple),
    ),
  );
}
