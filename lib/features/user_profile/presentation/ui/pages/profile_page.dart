import 'package:auth_fb_bloc/test_screens/new_test_file.dart';
import 'package:auth_fb_bloc/utils/custom_styles/text_styles.dart';
import 'package:auth_fb_bloc/utils/extention/spacer_extension.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../../test_screens/new_test_file.dart';
part '../components/c_profile_header.dart';
part '../components/c_certificate_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Symbols.settings,
                  color: Colors.black87,
                  size: 25,
                  weight: 600,
                ),
              ),
            )
          ],
          backgroundColor: Colors.deepPurple.withOpacity(0.44),
          toolbarHeight: 80,
          title: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: HeaderText(
              text: 'Profile',
            )
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                ProfileHeaderComp(),
                SizedBox(
                  height: 30,
                ),
               TitleText(text: 'Achievements', greyText: true),
                CertificateCardComp(),
                CertificateCardComp(),
                CertificateCardComp(),
                Container(
                  height: 120000,
                )
              ],
            ),
          ),
        ));
  }
}
