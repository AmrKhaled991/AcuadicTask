import 'package:aquadic_task/features/addPackegesScreen/presentation/view/addpackegsScreen.dart';
import 'package:aquadic_task/features/UserPackges/presentation/view/UserPackges.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String kpackages = "/kpackages";
  static const String kaddpackages = "/kaddpackages";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => UserPackges(),
      ),
      GoRoute(
        path: kaddpackages,
        builder: (context, state) => const Addpackegsscreen(),
      ),
      
    ],
  );
}
