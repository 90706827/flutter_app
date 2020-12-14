import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/user_service.dart';
import 'package:flutter_app/tab/tab_page.dart';
import 'package:provider/provider.dart';

import 'User.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, @required this.routers}) : super(key: key);
  final Map<String, WidgetBuilder> routers;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AutovalidateMode _autoValidate;
  GlobalKey<FormState> _formKey;
  TextEditingController _usernameTextEditingController;
  TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    super.initState();
    _autoValidate = AutovalidateMode.disabled;
    _formKey = GlobalKey<FormState>();
    _usernameTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: _usernameTextEditingController,
                    decoration: InputDecoration(labelText: "账户名称"),
                    validator: (String value) =>
                        _validateFormField(value, "账户名称"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: _passwordTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "账户密码"),
                    validator: (String value) =>
                        _validateFormField(value, "账户密码"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () => _onFormSaved(context,
                        User(username: _usernameTextEditingController.text)),
                    child: Text("登录"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _validateFormField(String value, String fieldName) {
    if (value.isEmpty) {
      return "$fieldName 不能为空.";
    }
    return null;
  }

  @override
  void dispose() {
    _usernameTextEditingController.dispose();
    _passwordTextEditingController.dispose();

    super.dispose();
  }

  _onFormSaved(BuildContext context, User user) {
    if (_formKey.currentState.validate()) {
      Provider.of<UserService>(context, listen: false).setUser(user);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => TabPage(),
          // builder: (context) => BasePage(
          //   title: widget.title,
          //   routers: widget.routers,
          // ),
        ),
      );
    }
  }
}
