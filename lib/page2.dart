import 'package:flutter/material.dart';
import 'page3.dart';

void main() => runApp(Page2app());

class Page2app extends StatelessWidget {
  const Page2app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Easy \n tracking',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center),
          Image.asset('assets/image1.jpg', height: 238, width: 285),
          Text('Track your carbon footprint levels \neffortlessly',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
              textAlign: TextAlign.center),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page3app()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              color: Color.fromRGBO(37, 99, 15, 1),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          )
        ])));
  }
}
