import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pencil_box_ui/widgets/custom_inputfield.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'congratulation.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width / 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: _size.height / 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: _size.width / 12),
                    child: LinearPercentIndicator(
                      width: _size.width - 100,
                      lineHeight: 6.0,
                      percent: 1,
                      progressColor: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 15,
                  ),
                  const Text(
                    'Set as User ID (Email Address / \nMobile)',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 30,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: FaIcon(FontAwesomeIcons.envelope,
                              size: 22, color: Colors.white),
                        ),
                        Text(
                          '  marium@pencilbox.edu.bd',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: const Color(0xFF2E64A4),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 50,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.phone_android, size: 24),
                        ),
                        Text(
                          '  Mobile Number',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  SizedBox(height: _size.height / 20,),
                  const Text('Type Password', style: TextStyle(fontSize: 18,)),
                  SizedBox(height: _size.height / 80),
                  const Text('Use atleast 8 to 12 characters', style: TextStyle(fontSize: 13)),

                  SizedBox(height: _size.height / 30),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(_size.width/20),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Color(0xFF2E64A4)),
                      suffixIcon: const Icon(Icons.visibility_off),
                      hintStyle: const TextStyle(fontSize:18, fontWeight: FontWeight.bold),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF2E64A4), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF2E64A4), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: _size.height / 30),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(_size.width/20),
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(color: Color(0xFF2E64A4)),
                      suffixIcon: const Icon(Icons.visibility_off),
                      hintStyle: const TextStyle(fontSize:18, fontWeight: FontWeight.bold),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF2E64A4), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF2E64A4), width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),

                  SizedBox(height: _size.height / 40),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: _size.height / 20),
                          child: const Text(
                            'For any help',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _size.height / 60),
                          child: const Text(
                            'Call at 16479',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CongratulationPage()));
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ));
  }
}
