import 'package:dribble_design/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  bool isCurrentIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Expanded(child: Container(color: Colors.red,)),
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(color: Colors.grey)),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: 'Search'),
                  ),
                ),
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                  IconButton(
                    icon: const Icon(Icons.camera_alt),
                    onPressed: () {
                      // add your code here
                    },
                  ),
                  // Image.asset(padlock, height: 60, width: 20,),
                  Positioned(
                      left: 24,
                      bottom: 25,
                      child: Container(
                        height: 20,
                        width: 20,
                        color: Colors.pinkAccent,
                        child: const Center(child: Text('1', style: TextStyle(color: Colors.white),)),
                      )
                  )
                ]
                ),
                Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          // add your code here
                        },
                      ),
                      // Image.asset(padlock, height: 60, width: 20,),
                      Positioned(
                          left: 24,
                          bottom: 25,
                          child: Container(
                            height: 20,
                            width: 20,
                            color: Colors.pinkAccent,
                            child: const Center(child: Text('9+', style: TextStyle(color: Colors.white),)),
                          )
                      )
                    ]
                ),

              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
              child: Container(
            color: Colors.yellow,
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        selectedIconTheme: const IconThemeData(color: Color(0xFF4DAB95)),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(vouchers)), label: 'Voucher'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(wallets)), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(setting)), label: 'Settings')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
