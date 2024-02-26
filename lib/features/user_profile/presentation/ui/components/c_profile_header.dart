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
            TitleText(text: 'Jagdish Ghimire'),
          3.spacerH,

           RegularText14(text: 'jagdissghimire@gmail.com')
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