part of 'login_bloc.dart';

abstract class LoginEvent {}

class UserTyped extends LoginEvent {
  final String user;
  UserTyped({  
    this.user = '',
  });
}


class PasswordTyped extends LoginEvent {
 final String password;
  PasswordTyped({  
    this.password = '',
  });
}

class LoginSubmitted extends LoginEvent {

}
