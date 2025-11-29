import 'package:client/screens/home_screen.dart';
import 'package:client/screens/login_screen.dart';
import 'package:client/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/login",
  redirect: (context, state) {
    return;
  },
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/login",
      name: "login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/profile_info",
      name: "profileinfo",
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);