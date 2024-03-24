import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:auth_fb_bloc/features/coursera_career/presentation/ui/pages/coursera_careerpage.dart';
import 'package:auth_fb_bloc/features/coursera_career/presentation/ui/pages/my_career.dart';
import 'package:auth_fb_bloc/features/learning_progress/presentation/ui/pages/learn_page.dart';
import 'package:auth_fb_bloc/features/search_page/presenatation/ui/pages/search_page.dart';
import 'package:auth_fb_bloc/features/user_profile/presentation/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntryPointPage extends StatefulWidget {
  Key? key;
  final StatefulNavigationShell navigationShell;
  EntryPointPage({this.key, required this.navigationShell}):super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  @override
  State<EntryPointPage> createState() => _EntryPointPageState();
}

class _EntryPointPageState extends State<EntryPointPage> {
  @override
  void initState() {
    
    super.initState();
  }
  
  

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple.shade50,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.navigationShell.currentIndex,
        selectedIconTheme: IconThemeData(
          color: Colors.deepPurple,
        ),
        onTap: (index) {
          widget.navigationShell.goBranch(
            index,
            initialLocation: index == widget.navigationShell.currentIndex,
          );
setState(() {
  
});
          // Respond to item press.
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Icon(Icons.book)
                : Icon(Icons.book_outlined),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Icon(Icons.school)
                : Icon(Icons.school_outlined),
            label: 'Career',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? Icon(Icons.search)
                : Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 4
                ? Icon(Icons.person)
                : Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
