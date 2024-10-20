import 'package:aquadic_task/core/GlobalUtils/appRouter.dart';
import 'package:aquadic_task/core/GlobalUtils/getItLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routeInformationParser: Approuter.router.routeInformationParser,
        routerDelegate: Approuter.router.routerDelegate,
        routeInformationProvider: Approuter.router.routeInformationProvider,
      ),
    );
  }
}
