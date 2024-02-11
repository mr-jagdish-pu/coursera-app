import 'package:auth_fb_bloc/features/auth/presentation/authenticator_bloc/firebase_authenticator_bloc.dart';
import 'package:auth_fb_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/presentation/pages/homepage.dart';
import 'features/auth/presentation/pages/registration_page.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirebaseAuthenticatorBloc(),
      child: MaterialApp(
        title: 'Auth with Bloc',
        theme: ThemeData(

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

              return HomePage();
            }
            //if user is not logged in send to login page

            return LoginPage();
          }, stream: _firebaseAuth.authStateChanges(),
        ),
      ),
    );
  }
}


