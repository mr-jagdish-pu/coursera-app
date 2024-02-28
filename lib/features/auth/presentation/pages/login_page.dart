import 'package:auth_fb_bloc/features/auth/presentation/authenticator_bloc/firebase_authenticator_bloc.dart';
import 'package:auth_fb_bloc/features/auth/presentation/pages/registration_page.dart';
import 'package:auth_fb_bloc/features/course_showcase/presentation/ui/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  //form key

  //controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //instance of firebaserepo

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //same as registration page use registration page as reference and implement the login page
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //text to display registration
          Text(
            'Login',
            style: TextStyle(fontSize: 30),
          ),
          RegistrationForm(
            formkey: formKey,
            emailController: emailController,
            passwordController: passwordController,
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BlocConsumer<FirebaseAuthenticatorBloc,
                FirebaseAuthenticatorState>(
              builder: (context, state) {
                print("STATE FROM LOGIN 48 ${state}");

                return FilledButton(
                  onPressed: () {
                    //check if form is valid
                    if (formKey.currentState!.validate()) {
                      BlocProvider.of<FirebaseAuthenticatorBloc>(context).add(
                          SignInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text));
                      //       emailController.text, passwordController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Login Started'),
                        ),
                      );
                    }
                    //snackbar to show to resolve the issue
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          ('Please satisfy the requirements to login'),
                        ),
                      ));
                    }
                  },
                  child: (state is FirebaseAuthenticatorLoading)
                      ? CircularProgressIndicator()
                      : Text('Login'),
                );
              },
              listener:
                  (BuildContext context, FirebaseAuthenticatorState state) {
                if (state is FirebaseAuthenticatorSuccess) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => RealHomePage()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
