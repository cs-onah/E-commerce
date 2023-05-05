import 'package:dribble_design/ui/widgets/badged_icon.dart';
import 'package:dribble_design/ui/widgets/carousel.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              //Carousel
              Carousel(
                children: [
                  CarouselItem(
                    child: Image.asset("images/poster1.png", fit: BoxFit.cover),
                    themeColor: Color(0xffE8EBEA),
                  ),
                  CarouselItem(
                    child: Image.asset("images/poster2.png", fit: BoxFit.cover),
                    themeColor: Color(0xffE4DBDB),
                  ),
                ],
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: MediaQuery.of(context).padding.top + 5,
                ),
                child: Row(
                  children: [
                    Expanded(child: SearchBar()),
                    const SizedBox(width: 20),
                    BadgedIcon(
                      icon: Icon(Icons.lock_outline_rounded, size: 30, color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 20),
                    BadgedIcon(
                      icon: Icon(Icons.chat_outlined, size: 30, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEFEFF1),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedIconTheme: const IconThemeData(color: Color(0xFF4DAB95)),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("images/home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/voucher.png"),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/wallet.png"),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/settings.png"),
            label: 'Settings',
          ),
        ],
        onTap: (_) {},
      ),
    );
  }
}
