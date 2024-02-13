part of '../pages/profile_page.dart';
class ProfileHeaderComp extends StatelessWidget {
  const ProfileHeaderComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Jagdish Ghimire",
                style: TextStyles.thickTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.1)),
            Text("jagdissghimire@gmail.com",
                style: TextStyles.courseTitle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.6))),
          ],
        ),
        //circle avatar
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 30,
          backgroundImage: NetworkImage(
              "https://icon-library.com/images/person-png-icon/person-png-icon-29.jpg"),
        )
      ],
    );
  }
}