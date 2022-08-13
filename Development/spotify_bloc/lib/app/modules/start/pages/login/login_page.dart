import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_bloc/app/core/ui/style/colors.dart';
import 'package:spotify_bloc/app/modules/start/pages/login/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: black,
        body: BlocProvider(
          create: (context) => LoginBloc(),
          child: _loginScope(),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Widget _loginScope() {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if(state is LoginFailure) {
          _showSnackBar(context, state.err.toString());
        }
      },
      child: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _user(),
              SizedBox(
                height: 35,
              ),
              _password(),
              SizedBox(
                height: 35,
              ),
              _submit(),
              SizedBox(
                height: 25,
              ),
              _withOutPassword(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _user() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'E-mail ou nome do \nusuário',
          style: TextStyle(
            color: white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: darkGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  cursorColor: white,
                  style: TextStyle(color: white),
                  onChanged: (value) => context.read<LoginBloc>().add(
                    UserTyped(user: value),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Senha',
          style: TextStyle(
            color: white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: darkGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      alignment: Alignment.center,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      color: white,
                      onPressed: () {},
                    ),
                  ),
                  obscureText: true,
                  cursorColor: white,
                  style: TextStyle(color: white),
                  onChanged: (value) => context.read<LoginBloc>().add(
                        PasswordTyped(password: value),
                      ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _submit() {
    return Center(
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial || state is LoginInvalid) {
            return ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: mediumGrey,
                minimumSize: Size(90, 45),
                splashFactory: NoSplash.splashFactory,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(color: darkGrey, fontWeight: FontWeight.w700),
              ),
            );
          } else if (state is LoginValid || state is LoginFailure) {
            return ElevatedButton(
              onPressed: () => context.read<LoginBloc>().add(
                LoginSubmitted(),
              ),
              style: ElevatedButton.styleFrom(
                primary: white,
                minimumSize: Size(90, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(color: darkGrey, fontWeight: FontWeight.w700),
              ),
            );
          } else if (state is LoginInProgress) {
            return ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: mediumGrey,
                minimumSize: Size(90, 45),
                splashFactory: NoSplash.splashFactory,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Entrar...',
                style: TextStyle(color: darkGrey, fontWeight: FontWeight.w700),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }

  Widget _withOutPassword() {
    return Center(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1,
            color: darkGrey,
            style: BorderStyle.solid,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Entrar sem senha',
          style: TextStyle(
            color: white,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
