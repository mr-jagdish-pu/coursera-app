import 'package:auth_fb_bloc/features/auth/presentation/authenticator_bloc/firebase_authenticator_bloc.dart';
import 'package:auth_fb_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/course_details.dart';
import 'package:auth_fb_bloc/utils/responsiveness/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirebaseAuthenticatorBloc(),
      child: MediaQuery(
        data: MediaQueryData(
          size: MediaQuery.sizeOf(context),
          textScaler: TextScaler.linear(1.w),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.sourceSans3().fontFamily,
            textTheme: GoogleFonts.sourceSans3TextTheme(),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error');
              }
              if (snapshot.hasData && snapshot.data != null) {
                return CourseDetails();
              }
              //if user is not logged in send to login page

              return LoginPage();
            },
            stream: _firebaseAuth.authStateChanges(),
          ),
        ),
      ),
    );
  }
}
