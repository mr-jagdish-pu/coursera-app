import 'package:auth_fb_bloc/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../authenticator_bloc/firebase_authenticator_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Home Page'),
            SizedBox(height: 20,),
            FilledButton(onPressed: (){
              //logout
              BlocProvider.of<FirebaseAuthenticatorBloc>(context).add(SignOut());
            }, child: Text('Logout'),),
            Container()
          ],
        ),
      ),
    );
  }
}
