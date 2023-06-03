import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../features/navigation/presentation/scaffold_with_nav_bar.dart';
import '../features/user_authentications/presentation/login_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
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

      /// Application shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/home',
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

          // /// Displayed when the second item in the the bottom navigation bar is
          // /// selected.
          // GoRoute(
          //   path: '/b',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const ScreenB();
          //   },
          //   routes: <RouteBase>[
          //     /// Same as "/a/details", but displayed on the root Navigator by
          //     /// specifying [parentNavigatorKey]. This will cover both screen B
          //     /// and the application shell.
          //     GoRoute(
          //       path: 'details',
          //       parentNavigatorKey: _rootNavigatorKey,
          //       builder: (BuildContext context, GoRouterState state) {
          //         return const DetailsScreen(label: 'B');
          //       },
          //     ),
          //   ],
          // ),

          // /// The third screen to display in the bottom navigation bar.
          // GoRoute(
          //   path: '/c',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const ScreenC();
          //   },
          //   routes: <RouteBase>[
          //     // The details screen to display stacked on the inner Navigator.
          //     // This will cover screen A but not the application shell.
          //     GoRoute(
          //       path: 'details',
          //       builder: (BuildContext context, GoRouterState state) {
          //         return const DetailsScreen(label: 'C');
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );
}
