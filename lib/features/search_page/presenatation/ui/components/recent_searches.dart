part of '../pages/search_page.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(text: 'Recently Viewed'),
              SizedBox(
                height: 40,
                width: 80,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Clear'),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SearchedItem(recentSearch:true),
        ],
      ),
    );
  }
}
class SearchedItem extends StatelessWidget {
  final bool recentSearch;
  const SearchedItem({super.key, required this.recentSearch});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

