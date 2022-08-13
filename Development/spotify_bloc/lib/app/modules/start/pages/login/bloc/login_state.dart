part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginValid extends LoginState {}

class LoginInvalid extends LoginState {}

class LoginInProgress extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final Object  err;
  LoginFailure({
    this.err = ''
  });
}