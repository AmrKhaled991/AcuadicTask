import 'package:aquadic_task/features/CustomWebViewScreen/custom_web_view_screen.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/view/AllPackegsBody.dart';
import 'package:aquadic_task/features/addPackegesScreen/presentation/view/addpackegsScreen.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/UserPackges.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String kpackages = "/kpackages";
  static const String kaddpackages = "/kaddpackages";
  static const String kCustomWebViewScreen = "/kCustomWebViewScreen";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const UserPackges(),
      ),
      GoRoute(
        path: kaddpackages,
        builder: (context, state) => const Addpackegsscreen(),
      ),
       GoRoute(
        path: kCustomWebViewScreen,
        builder: (context, state) =>  CustomWebViewScreen(url:state.extra as String ,),
      ),
      
    ],
  );
}
