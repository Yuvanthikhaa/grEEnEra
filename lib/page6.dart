import 'package:flutter/material.dart';
//import 'page7.dart';

void main() => runApp(Page6app());

class Page6app extends StatefulWidget {
  const Page6app({Key? key}) : super(key: key);

  @override
  State<Page6app> createState() => _Page6appState();
}

class _Page6appState extends State<Page6app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Column(
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
            ),
          ],
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.green[900],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          backgroundColor: Colors.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded), label: 'Leaderboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.money_off_rounded), label: 'Wallet'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        )); /*Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Categories',
            style: TextStyle(color: Color(0xff525464)),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            Column(
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
            ),
          ]),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(15.0),
            height: 60,
            width: 315,
            color: Color.fromRGBO(247, 247, 247, 1),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search,
                  color: Color.fromRGBO(82, 84, 100, 1),
                ),
                Text(
                  '   Search by category',
                  style: TextStyle(color: Color.fromRGBO(176, 176, 195, 1)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/images/furniture.png',
                  ),
                  title: Text('Furniture works'),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: SizedBox(
                    child: Image.asset('assets/images/clean.png',
                        alignment: Alignment.center),
                  ),
                  title: Text('Cleaning Services'),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: SizedBox(
                    child: Image.asset('assets/images/equip.png',
                        alignment: Alignment.center),
                  ),
                  title: Text('Equipment repair'),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: Container(
                    color: Color.fromRGBO(247, 247, 247, 1),
                    child: Image.asset('assets/images/courier.png',
                        alignment: Alignment.center),
                  ),
                  title: Text('Courier services'),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  leading: SizedBox(
                    child: Image.asset('assets/images/interior.png',
                        alignment: Alignment.center),
                  ),
                  title: Text('Interior design'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Color.fromRGBO(226, 226, 224, 0.49),
                height: 60,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Color.fromRGBO(131, 131, 145, 1),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page7app(),
                      ));
                },
                child: Container(
                  height: 60,
                  width: 150,
                  alignment: Alignment.center,
                  color: Color.fromRGBO(32, 195, 175, 1),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 225, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      )),
    );*/
  }
}
