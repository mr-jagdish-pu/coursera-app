import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:auth_fb_bloc/features/learning_progress/presentation/ui/pages/learn_page.dart';
import 'package:auth_fb_bloc/features/user_profile/presentation/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';


class EntryPointPage extends StatefulWidget {
   EntryPointPage({super.key});

  @override
  State<EntryPointPage> createState() => _EntryPointPageState();
}

class _EntryPointPageState extends State<EntryPointPage> {
  final listOfScreens = const <Widget>[RealHomePage(),LearnPage(),ProfilePage()];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: listOfScreens[currentIndex],
      bottomNavigationBar:  BottomNavigationBar(

        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.deepPurple,),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          // Respond to item press.
        },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: currentIndex == 0? Icon(Icons.home):Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1 ?Icon(Icons.book):Icon(Icons.book_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2? Icon(Icons.person): Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    ) ;
  }
}
