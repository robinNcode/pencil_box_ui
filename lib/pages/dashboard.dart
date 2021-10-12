import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.all(_width / 32),
              child: FaIcon(
                FontAwesomeIcons.solidUserCircle,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Search Job',
                style: TextStyle(fontSize: 36, color: Color(0xFF3B185F)),
              ),
              SizedBox(
                height: _height / 20,
              ),
              Column(
                children: [
                  CustomDropDown(
                    hint: 'Select Company',
                    item: ['Adovasoft', 'Data Soft', 'Divine IT'],
                  ),
                  CustomDropDown(
                    hint: 'Select Address',
                    item: ['Keraniganj', 'Shamoly', 'Banani'],
                  ),
                  CustomDropDown(
                    hint: 'Select Designation',
                    item: [
                      'Webdeveloper',
                      'Software Engineer',
                      'Data Analysist'
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: _height / 20,
              ),
              Column(
                children: [
                  CustomButton(
                    text: 'Search',
                    icon: FontAwesomeIcons.search,
                    buttonColor: Color(0xFF122F51),
                    iconColor: Colors.white,
                    textColor:  Colors.white,
                  ),
                  CustomButton(
                    text: 'View New Jobs',
                    icon: FontAwesomeIcons.fire,
                    buttonColor: Colors.white,
                    iconColor: Colors.red,
                    textColor: Colors.black87,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: _height / 20),
                      child: Text(
                        'For any help',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: _height / 60),
                      child: Text(
                        'Call at 16479',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          backgroundColor: Colors.red,
          child: Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  final String hint;
  List<String> item;

  CustomDropDown({Key? key, required this.hint, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void setState(Null Function() param0) {}

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
      child: DropdownButtonFormField(
        items: [
          DropdownMenuItem(
            child: Text(item[0]),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text(item[1]),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text(item[2]),
            value: 3,
          ),
        ],
        onChanged: (value) {
          setState(() {});
        },
        hint: Text(hint),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF122F51), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color buttonColor, textColor, iconColor;

  const CustomButton({Key? key, required this.text, required this.icon, required this.buttonColor, required this.textColor, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
        child: FloatingActionButton(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                WidgetSpan(
                  child: FaIcon(
                    icon,
                    color: iconColor,
                  ),
                ),
                TextSpan(
                    text: text,
                    style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onPressed: () {},
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          
        ),
      ),
    );
  }
}
