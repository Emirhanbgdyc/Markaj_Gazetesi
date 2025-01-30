// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/screens/About.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details_five.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details_four.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details_six.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details_three.dart';
import 'package:markaj_gazetesi/screens/Basketball_News_Screens/Basketball_news_details_two.dart';
import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.five.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.four.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail.six.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_one.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_three.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_two.dart';
import 'package:markaj_gazetesi/screens/Notification_screen_.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details_five.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details_four.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details_six.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details_three.dart';
import 'package:markaj_gazetesi/screens/Tenis_News_Screens/Tenis_news_details_two.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news.details_five.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news.details_four.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news.details_six.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news.details_three.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news.details_two.dart';
import 'package:markaj_gazetesi/screens/Voleybol_New_Screens/Voleybol_news_details.dart';
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

    GoRoute(
      path: '/b_details',
      builder: (context, state) => const BasketballNewsDetails(),
    ),
    GoRoute(
      path: '/b_two',
      builder: (context, state) => const BasketballNewsDetailsTwo(),
    ),
    GoRoute(
      path: '/b_three',
      builder: (context, state) => const BasketballNewsDetailsThree(),
    ),
    GoRoute(
      path: '/b_four',
      builder: (context, state) => const BasketballNewsDetailsFour(),
    ),
    GoRoute(
      path: '/b_five',
      builder: (context, state) => const BasketballNewsDetailsFive(),
    ),
    GoRoute(
      path: '/b_six',
      builder: (context, state) => const BasketballNewsDetailsSix(),
    ),

    GoRoute(
      path: '/v_details',
      builder: (context, state) => const VoleybolNewsDetails(),
    ),
    GoRoute(
      path: '/v_two',
      builder: (context, state) => const VoleybolNewsDetailstwo(),
    ),
    GoRoute(
      path: '/v_three',
      builder: (context, state) => const VoleybolNewsDetailsthree(),
    ),
    GoRoute(
      path: '/v_four',
      builder: (context, state) => const VoleybolNewsDetailsfour(),
    ),
    GoRoute(
      path: '/v_four',
      builder: (context, state) => const VoleybolNewsDetailsfour(),
    ),
    GoRoute(
      path: '/v_five',
      builder: (context, state) => const VoleybolNewsDetailsfive(),
    ),
    GoRoute(
      path: '/v_six',
      builder: (context, state) => const VoleybolNewsDetailsSix(),
    ),

    GoRoute(
      path: '/t_details',
      builder: (context, state) => const TenisNewsDetails(),
    ),
    GoRoute(
      path: '/t_two',
      builder: (context, state) => const TenisNewsDetailstwo(),
    ),
    GoRoute(
      path: '/t_three',
      builder: (context, state) => const TenisNewsDetailsthree(),
    ),
    GoRoute(
      path: '/t_four',
      builder: (context, state) => const TenisNewsDetailsfour(),
    ),
    GoRoute(
      path: '/t_five',
      builder: (context, state) => const TenisNewsDetailsfive(),
    ),
    GoRoute(
      path: '/t_six',
      builder: (context, state) => const TenisNewsDetailsSix(),
    ),
],
);
