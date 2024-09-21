import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_booking/domain/hotels/hotel_entity.dart';
import 'package:hotel_booking/infrastucture/adapters/hive_adapters.dart';
import 'package:hotel_booking/infrastucture/app_dependency.dart';
import 'package:hotel_booking/infrastucture/localization/locale.dart';
import 'package:hotel_booking/infrastucture/routing/app_router.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:easy_localization_loader/easy_localization_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createDependencyGraph();
  await EasyLocalization.ensureInitialized();
  Directory directory = await path.getApplicationDocumentsDirectory();
  await Hive.initFlutter(directory.path);
  await HiveAdapters().initAdapters();
  await Hive.openBox<Hotel>("FavoriteBox");

  runApp(EasyLocalization(
      supportedLocales: Locales.supportedLocales,
      path: Locales.path,
      assetLoader: const JsonAssetLoader(),
      fallbackLocale: Locales.fallback,
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
          useMaterial3: true, textTheme: GoogleFonts.openSansTextTheme()),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
