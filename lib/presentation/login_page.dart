import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/user_service.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:provider/provider.dart';

import 'User.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, @required this.title, @required this.routers})
      : super(key: key);
  final String title;
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                  controller: _usernameTextEditingController,
                  decoration: InputDecoration(labelText: "Username"),
                  validator: (String value) =>
                      _validateFormField(value, "Username")),
              TextFormField(
                  controller: _passwordTextEditingController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                  validator: (String value) =>
                      _validateFormField(value, "Password")),
              FlatButton(
                onPressed: () => _onFormSaved(context,
                    User(username: _usernameTextEditingController.text)),
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _validateFormField(String value, String fieldName) {
    if (value.isEmpty) {
      return "$fieldName cannot be empty.";
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
      var routeLists = widget.routers.keys.toList();
      Provider.of<UserService>(context, listen: false).setUser(user);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: GradientAppBar(
              title: Text(widget.title),
              gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
            ),
            body: new Container(
              child: new ListView.builder(
                itemBuilder: (context, index) {
                  return new InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(routeLists[index]);
                    },
                    child: new Card(
                      child: new Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        child: Text(widget.routers.keys.toList()[index]),
                      ),
                    ),
                  );
                },
                itemCount: widget.routers.length,
              ),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.cyan,
              child: Text('动动'),
              onPressed: () {
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          ),
        ),
      );
    }
  }
}
