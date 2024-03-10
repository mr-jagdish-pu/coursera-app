part of '../pages/search_page.dart';
class PopularSearches extends StatelessWidget {
  const PopularSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: 'Popular Searches'),
          25.spacerH,
          SearchedItem(recentSearch: false),
        ],
      ),
    );
  }
}


