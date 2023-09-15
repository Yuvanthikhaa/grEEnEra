import 'package:flutter/material.dart';
import 'page4.dart';

void main() => runApp(Page3app());

class Page3app extends StatelessWidget {
  const Page3app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Text('Gamified \n acts of Service',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(82, 84, 100, 1)),
              textAlign: TextAlign.center),
          Image.asset('assets/image2.jpg', height: 238, width: 285),
          Text('Contribute to the Carbon Footprint reductions \n in a fun way',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(131, 131, 145, 1)),
              textAlign: TextAlign.center),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page4app()));
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
