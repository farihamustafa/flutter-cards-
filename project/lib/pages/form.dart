import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  GlobalKey<FormState> Form_key = GlobalKey<FormState>();
  bool _isSecurePassword = true;
  void Onclick() {
    if (Form_key.currentState!.validate()) {
      print(_name.text);
      print(_password.text);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _name.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            elevation: 50,
            color: Colors.white,
            child: Form(
              key: Form_key,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        controller: _name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Name is required";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.person),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _name.clear();
                                },
                                icon: Icon(Icons.clear)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    TextFormField(
                        controller: _name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Name is required";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.person),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _name.clear();
                                },
                                icon: Icon(Icons.clear)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: _password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password is required";
                          } else {
                            return null;
                          }
                        },
                        obscureText: _isSecurePassword,
                        decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isSecurePassword = !_isSecurePassword;
                                  });
                                },
                                icon: _isSecurePassword
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        Onclick();
                      },
                      child: Text("Submit"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
