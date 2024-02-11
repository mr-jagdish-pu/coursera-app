part of 'firebase_authenticator_bloc.dart';

@immutable
abstract class FirebaseAuthenticatorState {}

class FirebaseAuthenticatorInitial extends FirebaseAuthenticatorState {}

class FirebaseAuthenticatorLoading extends FirebaseAuthenticatorState {}

class FirebaseAuthenticationSignedOut extends FirebaseAuthenticatorState {}

class FirebaseAuthenticatorSuccess extends FirebaseAuthenticatorState {
  final UserModel user;
  FirebaseAuthenticatorSuccess({required this.user});
}

class FirebaseAuthenticatorFailed extends FirebaseAuthenticatorState {
  final String message;
  FirebaseAuthenticatorFailed({required this.message});
}
