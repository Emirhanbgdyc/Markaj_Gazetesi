// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/screens/About.dart';
import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.five.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.four.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.six.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_one.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_three.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_two.dart';
import 'package:markaj_gazetesi/screens/Notification_screen_.dart';
import 'package:markaj_gazetesi/screens/category_screens/basketbol_category.dart';
import 'package:markaj_gazetesi/screens/category_screens/futbol_category.dart';
import 'package:markaj_gazetesi/screens/category_screens/tenis_category.dart';
import 'package:markaj_gazetesi/screens/category_screens/voleybol_category.dart';
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
    GoRoute(
path: '/notification',
builder: (context, state) => const NotificationScreen(),
    ),
    GoRoute(
      path: '/futbolcategory',
      builder: (context, state) => const futbolcategory(),
    ),
    GoRoute(
      path: '/basketbolcategory',
      builder: (context, state) => const basketbolcategory(),
    ),
    GoRoute(
      path: '/voleybolcategory',
      builder: (context, state) => const voleybolcategory(),
    ),
    GoRoute(
      path: '/teniscategory',
      builder: (context, state) => const TennisCategoryScreen(),
    ),
    GoRoute(
      path: '/f_one',
      builder: (context, state) => const NewsDetailOneScreen(),
    ),
    GoRoute(
      path: '/f_two',
      builder: (context, state) => const NewsDetailTwoScreen(),
    ),
    GoRoute(
      path: '/f_tree',
      builder: (context, state) => const NewsDetailThreeScreen(),
    ),
    GoRoute(
      path: '/f_four',
      builder: (context, state) => const NewsDetailFourScreen(),
    ),
    GoRoute(
      path: '/f_five',
      builder: (context, state) => const NewsDetailFiveScreen(),
    ),
    GoRoute(
      path: '/f_six',
      builder: (context, state) => const NewsDetailSixScreen(),
    ),
],
);
