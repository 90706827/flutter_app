import 'package:flutter/material.dart';
import 'package:flutter_app/login/app_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppCard(
                child: Text(
                  'User Login',
                  style: TextStyle(fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
              AppCard(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: "Email"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Password"),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("Login"),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: (){},
                          child: Text("Forgot Password?"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  FlatButton(onPressed: () {}, child: Text("Sign up")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
