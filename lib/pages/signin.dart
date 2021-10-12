import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';

class SignInPage extends StatelessWidget {
  
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: TextStyle(fontSize: 36, color: Color(0xFF3B185F)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: TextFormField(
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    labelText: 'User Name, Email or Mobile No',
                    labelStyle: TextStyle(color: Colors.black87),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFF150050), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text('Forgot Username ?'),
              ),
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.all(_height / 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          'Sign With Social',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: _height / 30),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: FloatingActionButton(
                                backgroundColor: Colors.red,
                                onPressed: () {},
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 30,
                                ),
                                heroTag: Text('btn1'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Color(0xFF0574E7),
                                child: FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  size: 30,
                                ),
                                heroTag: Text('btn2'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.blue,
                                child: FaIcon(
                                  FontAwesomeIcons.linkedinIn,
                                  size: 30,
                                ),
                                heroTag: Text('btn3'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height/32),
                        child: Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height/32),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.purple[900]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DashBoard()));
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
