import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pencil_box_ui/views/password.dart';
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
            child: Column(
              children: [
                SizedBox(
                  height: _size.height / 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _size.width / 8),
                  child: LinearPercentIndicator(
                    width: _size.width - 100,
                    lineHeight: 6.0,
                    percent: 0.4,
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(
                  height: _size.height / 10,
                ),
                const Text(
                  'Select gender',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 20,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    child: Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.user,
                            size: 26, color: Colors.red),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 20),
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 30,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    child: Row(
                      children: [
                        Image.asset('assets/images/female-user-icon.png'),
                        const Text(
                          'Female',
                          style: TextStyle(fontSize: 20),
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 30,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.transgender,
                            size: 26, color: Colors.blue[900]),
                        const Text(
                          'Female',
                          style: TextStyle(fontSize: 20),
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
                ),
                SizedBox(
                  height: _size.height / 10,
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
