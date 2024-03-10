import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import '../../../../../test_screens/new_test_file.dart';
import '../../../../course_showcase/presentation/ui/pages/see_all_page.dart';

part '../components/recently_viewed.dart';
part '../components/search_result.dart';
part '../components/recent_searches.dart';
part '../components/popular_searches.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool data) => [
                SliverAppBar(
                  expandedHeight: 60,
                  toolbarHeight: 60,
                  collapsedHeight: 70,
                  pinned: true,
                  primary: true,
                  title: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: HeaderText(text: 'Search'),
                  ),
                  flexibleSpace: FlexibleSpaceBar(),
                  bottom: PreferredSize(
                    preferredSize: Size(wd, 80),
                    child: Container(
                        height: 75,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: TextField(
                            decoration: InputDecoration(
                                labelStyle: TextStyles.courseSubtitle,
                                prefixIcon:
                                    Icon(Icons.search, weight: 19, size: 25),
                                border: OutlineInputBorder(),
                                labelText: 'Search'))),
                  ),
                  floating: true,
                  snap: true,
                ),
              ],
          body: ListView(
            children: [
              RecentlyViewed(),
              10.spacerH,
              RecentSearches(),
              10.spacerH,
              PopularSearches(),
              10.spacerH,
              SearchResultC()
            ],
          )),
    );
  }
}
