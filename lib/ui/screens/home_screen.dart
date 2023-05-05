import 'package:dribble_design/ui/widgets/badged_icon.dart';
import 'package:dribble_design/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:dribble_design/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool isCurrentIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top + 5),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                Expanded(child: SearchBar()),
                const SizedBox(width: 20),
                BadgedIcon(),
                const SizedBox(width: 20),
                BadgedIcon(),
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
