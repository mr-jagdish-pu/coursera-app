part of '../pages/search_page.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
          RecentlyViewedItem(),
        ],
      ),
    );
  }
}

class RecentlyViewedItem extends StatelessWidget {
  const RecentlyViewedItem({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.sizeOf(context).width;
    return Row(


      children: [
        //preview image
        ClipRRect(
          child: Image.network(
            'https://assets-global.website-files.com/62e95dddfb380a0e61193e7d/634970c7cbeed5644711b937_62fd57ccd6890f25796f92f9_AdobeStock_295461823.jpeg',
            height: 50,
            width: 50,
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        10.spacerW,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: (wd * 0.6).w,
              child: RegularText14(
                text: 'Python for Everybody',
              ),
            ),
            4.spacerH,
            RegularText12(
              text: 'Programming',
            ),
          ],
        ),
      ],
    );
  }
}