


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/datatype_adapter.dart';
import '../../models/user_model.dart';
import '../../repository/firebase_auth_repo.dart';

part 'firebase_authenticator_event.dart';
part 'firebase_authenticator_state.dart';

class FirebaseAuthenticatorBloc extends Bloc<FirebaseAuthenticatorEvent, FirebaseAuthenticatorState> {
  final _instance = FireBaseAuthenticationRepository();
  FirebaseAuthenticatorBloc() : super(FirebaseAuthenticatorInitial()) {
   //on register event
    on<RegisterWithEmailAndPassword>((event, emit) async {
      emit(FirebaseAuthenticatorLoading());
      final response = await _instance.registerWithEmailAndPassword(event.email, event.password);
      if (response is SuccessFutureResponse<UserModel>) {
        emit(FirebaseAuthenticatorSuccess(user: response.data));
      } else if (response is ErrorFutureResponse) {
        emit(FirebaseAuthenticatorFailed(message: response.message));
      }
    });

    //on sign in event
    on<SignInWithEmailAndPassword>((event, emit) async {
      emit(FirebaseAuthenticatorLoading());
      final response = await _instance.signInWithEmailAndPassword(event.email, event.password);
      if (response is SuccessFutureResponse<UserModel>) {
        emit(FirebaseAuthenticatorSuccess(user: response.data));
      } else if (response is ErrorFutureResponse) {
        emit(FirebaseAuthenticatorFailed(message: response.message));
      }
    });

    //on sign out event
    on<SignOut>((event, emit) async {
      await _instance.signOut();
      emit(FirebaseAuthenticationSignedOut());
    });
  }
}
