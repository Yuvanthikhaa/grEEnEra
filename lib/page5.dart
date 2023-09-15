import 'package:flutter/material.dart';
import 'page6.dart';
import 'page4.dart';

void main() => runApp(Page5app());

class Page5app extends StatefulWidget {
  const Page5app({Key? key}) : super(key: key);

  @override
  State<Page5app> createState() => _Page5appState();
}

class _Page5appState extends State<Page5app> {
  bool _isHidden = true;
  bool _ishidden = true;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController ppasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Sign In',
            style: TextStyle(color: Color(0xff525464)),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            GestureDetector(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page5app()));
                }),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/Menu.png',
                        height: 30,
                        width: 18,
                      ),
                    )
                  ],
                )),
            //Image.asset('assets/Rectanglc.png'),
          ]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Image.asset('assets/images/page6.png', height: 145, width: 100),
          SizedBox(
            height: 60,
            width: 315,
            //margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 16),
            //padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              obscureText: false,
              controller: namecontroller,
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(247, 247, 247, 1)),
            ),
          ),
          SizedBox(
            height: 60,
            width: 315,
            //margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 16),
            //padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              obscureText: _isHidden,
              controller: passcontroller,
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                  filled: true,
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(Icons.visibility),
                  ),
                  //suffix: Icon(Icons.lock),
                  fillColor: Color.fromRGBO(247, 247, 247, 1)),
            ),
          ),
          SizedBox(
            height: 60,
            width: 315,
            //margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 16),
            //padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              obscureText: _ishidden,
              controller: ppasscontroller,
              decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                  filled: true,
                  suffix: InkWell(
                    onTap: _ttogglePasswordView,
                    child: Icon(Icons.visibility),
                  ),
                  //suffix: Icon(Icons.lock),
                  fillColor: Color.fromRGBO(247, 247, 247, 1)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page6app()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 315,
              color: Color.fromRGBO(37, 99, 15, 1),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 19,
            width: 16,
            //color: Color.fromRGBO(32, 195, 175, 1),
            child: Text(
              'or',
              style: TextStyle(color: Color.fromRGBO(131, 131, 145, 1)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/fb.png'),
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/twitter.png'),
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: Image.asset('assets/images/link.png'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?  ",
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    color: Color.fromRGBO(131, 131, 145, 1)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page4app()));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      color: Color.fromARGB(255, 31, 170, 101)),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _ttogglePasswordView() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }
}
