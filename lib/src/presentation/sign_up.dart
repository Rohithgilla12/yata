import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/containers/is_signing_up_container.dart';
import 'package:yatp/src/models/index.dart';
import 'package:yatp/src/presentation/app_routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password, _firstName, _lastName;

  void _onSubmit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      StoreProvider.of<AppState>(context).dispatch(SignUp.start(
        email: _email,
        password: _password,
        firstName: _firstName,
        lastName: _lastName,
        result: (AppAction action) {},
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: const Text('Sign Up'),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0 - 32,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'First Name',
                            ),
                            onSaved: (String input) => _firstName = input,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.0 - 32,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Last Name',
                            ),
                            onSaved: (String input) => _lastName = input,
                          ),
                        ),
                      ],
                    ),
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
              IsSigningUpContainer(
                builder: (BuildContext context, bool isLoading) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: _onSubmit,
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
                      ),
                      color: Colors.white,
                    ),
                  );
                },
              ),
              const SizedBox(height: 8.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
                  child: Text(
                    'Login?',
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
