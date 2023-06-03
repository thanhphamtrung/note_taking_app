import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../features/navigation/presentation/scaffold_with_nav_bar.dart';
import '../features/user_authentications/presentation/forgot_password_screen.dart';
import '../features/user_authentications/presentation/login_screen.dart';
import '../features/user_authentications/presentation/register_screen.dart';

import 'route.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutePath.forgotPassword,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: RoutePath.forgotPassword,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        name: RouteName.login,
        path: RoutePath.register,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterScreen();
        },
      ),
      GoRoute(
        path: RoutePath.forgotPassword,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPasswordScreen();
        },
      ),

      /// Application shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: RoutePath.home,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            },
            // routes: <RouteBase>[
            //   // The details screen to display stacked on the inner Navigator.
            //   // This will cover screen A but not the application shell.
            //   GoRoute(
            //     path: 'details',
            //     builder: (BuildContext context, GoRouterState state) {
            //       return const LoginScreen(label: 'A');
            //     },
            //   ),
            // ],
          ),
        ],
      ),
    ],
  );
}
