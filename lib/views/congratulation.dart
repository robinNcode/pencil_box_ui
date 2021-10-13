import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CongratulationPage extends StatelessWidget {
  const CongratulationPage({Key? key}) : super(key: key);

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
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 7),
                    child: Image(
                      image: const AssetImage('assets/images/award.jpg'),
                      width: MediaQuery.of(context).size.width / 2.5,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  const Text('Congratulations!', style: TextStyle(
                    fontSize: 26,
                    color: Color(0xFF2E64A4),
                    letterSpacing: 1,
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text('Your account has been created successfully.', style: TextStyle(
                    fontSize: 16,
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon( Icons.search, color: Colors.white),
                          ),
                          Text(
                            '  Find favorite jobs',
                            style: TextStyle(fontSize: 18, color: Colors.white,
                              letterSpacing: 1,),
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
                ],
              ),
            ),
          ),
        ));
  }
}
