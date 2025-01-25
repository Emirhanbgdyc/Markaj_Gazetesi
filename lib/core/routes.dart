// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/screens/About.dart';
import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';




final router = GoRouter(
  initialLocation: '/loading',
  routes: [
    GoRoute(
      path: '/loading',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/news',
      builder: (context, state) => const NewsDetailScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);
