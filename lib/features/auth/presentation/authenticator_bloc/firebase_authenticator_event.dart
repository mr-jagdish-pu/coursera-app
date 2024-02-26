part of 'firebase_authenticator_bloc.dart';

@immutable
abstract class FirebaseAuthenticatorEvent {}
//register, sign in, sign out,  events with email and password
class RegisterWithEmailAndPassword extends FirebaseAuthenticatorEvent {
  final String email;
  final String password;
  RegisterWithEmailAndPassword({required this.email, required this.password});
}
class SignInWithEmailAndPassword extends FirebaseAuthenticatorEvent {
  final String email;
  final String password;
  SignInWithEmailAndPassword({required this.email, required this.password});
}
class SignOut extends FirebaseAuthenticatorEvent {}
