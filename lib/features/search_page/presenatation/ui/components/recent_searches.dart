part of '../pages/search_page.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(text: 'Recent Searches'),
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
          SearchedItem(recentSearch: true),
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
    final wd = MediaQuery.sizeOf(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (recentSearch)
            ? Icon(
                Icons.history,
                size: 25,
              )
            : Icon(
                Icons.search_outlined,
                size: 27,
              ),
        10.spacerW,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: RegularText14(
                text: 'Flutter Development',
              ),
              width: (wd * 0.7).w,
            ),
            4.spacerH,
            SizedBox(
              child: Divider(color: Colors.grey.shade600, thickness: 1),
              width: (wd * 0.8).w,
            ),
          ],
        ),
      ],
    );
  }
}
