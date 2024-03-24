import 'package:auth_fb_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/see_all_page.dart';
import 'package:auth_fb_bloc/features/entry_point_page.dart';
import 'package:auth_fb_bloc/features/user_profile/presentation/ui/pages/profile_page.dart';
import 'package:go_router/go_router.dart';
import '../../features/course_showcase/presentation/ui/pages/course_details.dart';
import '../../features/course_showcase/presentation/ui/pages/course_main_page.dart';
import '../../features/coursera_career/presentation/ui/pages/coursera_careerpage.dart';
import '../../features/coursera_career/presentation/ui/pages/my_career.dart';
import '../../features/learning_progress/presentation/ui/pages/learn_page.dart';
import '../../features/search_page/presenatation/ui/pages/search_page.dart';

//import material
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutesNames.home,
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, hello) => EntryPointPage(
              navigationShell: hello,
            ),
        branches: [
          StatefulShellBranch(
            navigatorKey: _sectionANavigatorKey,
            routes: [
              GoRoute(
                path: RoutesNames.home,
                builder: (context, state) => RealHomePage(),
                routes: [
                  GoRoute(
                    path: RoutesNames.courseDetails,
                    builder: (context, state) => CourseDetails(),
                    routes: [
                      GoRoute(
                        path: RoutesNames.courseMainPage,
                        builder: (context, state) => CourseMainPage(),
                      ),
                    ],
                  ),
                  GoRoute(
                      path: RoutesNames.seeAll,
                      builder: (context, state) => SeeAllPage()),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutesNames.learn,
                builder: (context, state) => LearnPage(),
                routes: [
                  GoRoute(
                    path: RoutesNames.courseMainPage,
                    builder: (context, state) => CourseMainPage(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: RoutesNames.courseraCareer,
                  builder: (context, state) => CourseraCareerPage(),
                  routes: [
                    GoRoute(
                        path: RoutesNames.myCareer,
                        builder: (context, state) => MyCareerPage()),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: RoutesNames.search,
                  builder: (context, state) => SearchPage(),
                  routes: [
                    GoRoute(
                      path: RoutesNames.courseDetails,
                      builder: (context, state) => CourseDetails(),
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutesNames.login,
                builder: (context, state) => ProfilePage(),
              ),
            ],
          ),
        ])
  ],
);

class RoutesNames {
  //login
  static const String login = '/login';
  static const String entry_point_page = 'entry_point_page';
  static const String home = '/home';
  static const String learn = '/learn';
  static const String search = '/search';
  static const String profile = 'profile';
  static const String seeAll = 'seeAll';
  static const String courseDetails = 'courseDetails';
  static const String courseMainPage = 'courseMainPage';
  static const String courseraCareer = '/courseraCareer';
  static const String myCareer = 'myCareer';
}

/**
 * 
 *  <GoRoute>[
    GoRoute(path: RoutesNames.entry_point_page , builder: (context, state) => EntryPointPage(),),
 
  
  
  
  // myCareer
  
  
  GoRoute(

    path: RoutesNames.profile,
    builder: (context, state) => ProfilePage(),
  ),
 */
