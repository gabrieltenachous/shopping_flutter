import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Bem-Vindo",
                                  style: Theme.of(context).textTheme.display2,
                                ),
                                Text(
                                  "Entre para Continuar",
                                  style: Theme.of(context).textTheme.subhead,
                                ),
                              ],
                            ),
                            FlatButton(
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          // autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email Invalido';
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          // autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Senha Invalida';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input,
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            child: Text(
                              "Esqueceu Sua Senha?",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: FlatButton(
                            child: Text(
                              "Logar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                print(_email);
                                print(_password);

                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Welcome, $_email'),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OU -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      Text("Logar com Facebook"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      Text("Logar com o Google"),
                    ],
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
