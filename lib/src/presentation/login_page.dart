import 'package:flutter/material.dart';
import 'package:yatp/src/presentation/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  void _onSubmit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'YATP',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              Text(
                'Yet another TODO application',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        icon: Icon(Icons.mail_outline),
                      ),
                      validator: (String input) => !input.contains('@') ? 'Please input valid email id' : null,
                      onSaved: (String input) => _email = input,
                    ),
                    const SizedBox(height: 24.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        icon: Icon(Icons.vpn_key),
                      ),
                      validator: (String input) => input.length < 6 ? 'Check your password field' : null,
                      onSaved: (String input) => _password = input,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: _onSubmit,
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.signUp),
                  child: Text(
                    'Sign up?',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
