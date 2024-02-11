import 'package:auth_fb_bloc/features/auth/repository/firebase_auth_repo.dart';
import 'package:flutter/material.dart';

//form key
final formKey = GlobalKey<FormState>();

class RegistrationPage extends StatelessWidget {
  final FireBaseAuthenticationRepository _fireBaseAuthenticationRepository =
      FireBaseAuthenticationRepository();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //text to display registration
          Text(
            'Register',
            style: TextStyle(fontSize: 30),
          ),

          RegistrationForm(
             formkey: formKey,
              emailController: emailController,
              passwordController: passwordController),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width:  double.infinity,
            height:  50,
            child: FilledButton(
              onPressed: () {

                //check if form is valid
                if (formKey.currentState!.validate()) {
                  _fireBaseAuthenticationRepository.registerWithEmailAndPassword(emailController.text, passwordController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Registration Started'),
                    ),
                  );
                }
                //snackbar to show to resolve the issue
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please satisfy the requirements to register'),
                    ),
                  );
                }

              },
              child: Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const RegistrationForm(
      {super.key,
      required this.emailController,
      required this.passwordController, required this.formkey});

  @override
  Widget build(BuildContext context) {
    //create a form having round corner textfield for email and password
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 40, bottom: 40),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            TextFormField(
              validator: (value) {
                //check if email is valid
                if (value!.isEmpty) {
                  return 'Please enter email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              validator: (value) {
                //check if password is valid
                if (value!.isEmpty) {
                  return 'Please enter password';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                return null;
              },
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
