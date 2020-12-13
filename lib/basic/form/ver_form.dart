import 'package:flutter/material.dart';

class VerForm extends StatefulWidget {
  VerForm({Key key}) : super(key: key);

  @override
  _VerFormState createState() => _VerFormState();
}

class _VerFormState extends State<VerForm> {
  final _formKey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单验证'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (String val) => setState(() => name = val),
                  onChanged: (String val) => setState(() => name = val),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "You can't have an empty name!";
                    }
                    if (value.length < 2) {
                      return "Name must have more than one character";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    helperText: "This has to be over two characters in length.",
                  ),
                ),
                RaisedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    _formKey.currentState.save();
                    _formKey.currentState.validate()
                        ? Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("This is valid.")))
                        : Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("This is not valid.")));
                  },
                ),
                Text('$name'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
