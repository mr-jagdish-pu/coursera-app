part of '../pages/search_page.dart';

class SearchResultC extends StatelessWidget {
  const SearchResultC({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: TitleText(text: 'Search results'),
          ),
          5.spacerH,
          CourseListTileC()
        ],
      );

  }
}
