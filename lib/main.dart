import 'package:flutter/material.dart';
import '/utils/router.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(SymfoniaApp(
    router: AppRouter(),
  ));
}

class SymfoniaApp extends StatelessWidget {
  final AppRouter router;

  const SymfoniaApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symfonia',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      theme: appTheme,
    );
  }
}
