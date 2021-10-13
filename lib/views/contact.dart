import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pencil_box_ui/views/password.dart';
import 'package:pencil_box_ui/widgets/custom_inputfield.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
                    height: _size.height / 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: _size.width / 12),
                    child: LinearPercentIndicator(
                      width: _size.width - 100,
                      lineHeight: 6.0,
                      percent: 0.8,
                      progressColor: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 15,
                  ),
                  const Text(
                    'Provide your Mobile No and Email Address (atleast one)',
                    style: TextStyle(fontSize: 18,),
                  ),
                  SizedBox(
                    height: _size.height / 30,
                  ),
                  const CustomField(labelText: 'Country Code', labelColor: Color(0xFF2E64A4), hintText: 'Bangladesh (+088)',),
                  SizedBox(
                    height: _size.height / 40,
                  ),
                  const CustomField(labelText: 'Mobile Number', labelColor: Color(0xFF2E64A4), hintText: '',),
                  SizedBox(
                    height: _size.height / 30,
                  ),
                  Column(
                    children: [
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin:
                              const EdgeInsets.only(left: 8, right: 8),
                              child: const Divider(
                                color: Colors.black,
                                height: 36,
                              )),
                        ),
                        const Text("OR", style: TextStyle(fontWeight: FontWeight.bold),),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              child: const Divider(
                                color: Colors.black,
                                height: 36,
                              )),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: _size.height / 40,
                  ),
                  const CustomField(labelText: 'Email', labelColor: Color(0xFF2E64A4), hintText: '',),
                  SizedBox(
                    height: _size.height / 8,
                  ),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PasswordPage()));
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ));
  }
}
