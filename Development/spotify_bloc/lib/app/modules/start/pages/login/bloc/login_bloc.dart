import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  
  String user = '';
  String password = '';

  LoginBloc() : super(LoginInitial()) {

    on<UserTyped>((event, emit) {
      if(EmailValidator.validate(event.user)) {
        user = event.user;
        if(password != '') {
          emit(LoginValid());
        }
      } else {
        emit(LoginInvalid());
      }
    });
    on<PasswordTyped>((event, emit) {
      if(event.password.trim().length > 5) {
        password = event.password;
        if(user != '') {
          emit(LoginValid());
        }
      } else {
        emit(LoginInvalid());
      }
    });
    on<LoginSubmitted>((event, emit) {

      emit(LoginInProgress());

      try {
        // print({'user: $user', 'password: $password'});
        Modular.to.navigate('/');
      } catch (err) {
        emit(LoginFailure(err: err));
      }
    });
  }

}
