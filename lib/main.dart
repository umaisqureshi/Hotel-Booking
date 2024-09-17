import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/infrastucture/app_dependency.dart';
import 'package:hotel_booking/infrastucture/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createDependencyGraph();
  runApp(const MyApp());
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
      theme: ThemeData(
          useMaterial3: true, textTheme: GoogleFonts.ralewayTextTheme()),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
