import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pardner/config/styles.dart';
import 'package:pardner/core/features/database/data/database_initialization.dart';
import 'package:pardner/presentation/pages/main_page/main_page.dart';

late DatabaseInitializations objectBox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await DatabaseInitializations.init();
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.offWhite,
          appBarTheme: AppBarTheme(backgroundColor: AppColors.black)),
    );
  }
}
