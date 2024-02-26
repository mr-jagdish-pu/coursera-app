part of '../pages/profile_page.dart';
class CertificateCardComp extends StatelessWidget {
  const CertificateCardComp({super.key});

  @override
  Widget build(BuildContext context) {
    final wd = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.15)),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      "Programming Fundamentals in Kotlin",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.courseTitle.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 15.5),
                    ),
                    width: wd * 0.6,
                  ),
                  Text("Meta"),
                  Row(
                    children: [
                      Icon(
                        Icons.verified,
                        color: Colors.green.shade300,
                        size: 16,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("Completed on Nov 2, 2022"),
                    ],
                  ),
                  Text("Grade: 89%")
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.network(
                  height: 80,
                  width: 80,
                  errorBuilder: (context, a, B) =>
                      Center(child: Icon(Icons.warning_amber)),
                  fit: BoxFit.fitHeight,
                  "https://cdn-icons-png.flaticon.com/512/10771/10771981.png",
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: wd,
            child: FilledButton(
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {},
              child: Row(children: [
                Icon(Symbols.share_windows, size: 20),
                SizedBox(
                  width: 10,
                ),
                Text('Share')
              ], mainAxisAlignment: MainAxisAlignment.center),
            ),
          )
        ],
      ),
    );
  }
}