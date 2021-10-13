import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'contact.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _size.height / 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _size.width / 7),
                  child: LinearPercentIndicator(
                    width: _size.width - 100,
                    lineHeight: 6.0,
                    percent: 0.6,
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(
                  height: _size.height / 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _size.width / 12),
                  child: const Text(
                    'Select gender',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 20,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 50,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: FaIcon(FontAwesomeIcons.user,
                              size: 24, color: Colors.black),
                        ),
                        Text(
                          '  Male',
                          style: TextStyle(fontSize: 20, color: Color(0xFF2E64A4),),
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
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(
                              'assets/images/female-user-icon.png',
                              height: 30,
                              color: Colors.white),
                        ),
                        const Text(
                          '  Female',
                          style: TextStyle(fontSize: 20, color: Colors.white,),
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
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 30,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: FaIcon(FontAwesomeIcons.transgender,
                              size: 26, color: Colors.blue[900]),
                        ),
                        const Text(
                          '  Other',
                          style: TextStyle(fontSize: 20, color: Color(0xFF2E64A4),),
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
                  height: _size.height / 4,
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
                MaterialPageRoute(builder: (context) => const ContactPage()));
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ));
  }
}
