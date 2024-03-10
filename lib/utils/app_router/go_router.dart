import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/see_all_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/course_showcase/presentation/ui/pages/course_details.dart';
import '../../features/course_showcase/presentation/ui/pages/course_main_page.dart';
import '../../features/learning_progress/presentation/ui/pages/learn_page.dart';
import '../../features/search_page/presenatation/ui/pages/search_page.dart';
import '../../features/user_profile/presentation/ui/pages/profile_page.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: RoutesNames.home,
    builder: (context, state) => RealHomePage(),
    routes: [
      GoRoute(
        path: RoutesNames.courseMainPage,
        builder: (context, state) => CourseMainPage(),
      ),
    ],
  ),
  GoRoute(
    path: RoutesNames.learn,
    builder: (context, state) => LearnPage(),
  ),
  GoRoute(
    path: RoutesNames.search,
    builder: (context, state) => SearchPage(),
  ),
  GoRoute(
    path: RoutesNames.profile,
    builder: (context, state) => ProfilePage(),
  ),
  GoRoute(
    path: RoutesNames.courseDetails,
    builder: (context, state) => CourseDetails(),
  ),
  GoRoute(
    path: RoutesNames.seeAll,
    builder: (context, state) => SeeAllPage(),
  ),
]);

class RoutesNames {
  static const String home = '/';
  static const String learn = '/learn';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String seeAll = '/seeAll';
  static const String courseDetails = '/courseDetails';
  static const String courseMainPage = '/courseMainPage';
}
