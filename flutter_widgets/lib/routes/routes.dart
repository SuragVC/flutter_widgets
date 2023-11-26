import 'package:flutter_widgets/widgets/home_page.dart';
import 'package:go_router/go_router.dart';

get routes => _routes;

var _routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
