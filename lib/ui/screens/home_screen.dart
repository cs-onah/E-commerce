import 'package:dribble_design/ui/widgets/badged_icon.dart';
import 'package:dribble_design/ui/widgets/carousel.dart';
import 'package:dribble_design/ui/widgets/category_item.dart';
import 'package:dribble_design/ui/widgets/fixed_header.dart';
import 'package:dribble_design/ui/widgets/indicator_dot.dart';
import 'package:dribble_design/ui/widgets/product_tile.dart';
import 'package:dribble_design/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final appBarMaxHeight = 200 + 125;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: appBarMaxHeight - 60,
            title: SearchBar(),
            actions: [
              Center(
                child: BadgedIcon(
                  icon: Icon(
                    Icons.lock_outline_rounded,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Center(
                child: BadgedIcon(
                  icon: Icon(
                    Icons.chat_outlined,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: null,
              background: Stack(
                children: [
                  //Carousel
                  Carousel(
                    children: [
                      CarouselItem(
                        child: Image.asset(
                          "images/poster1.png",
                          fit: BoxFit.cover,
                        ),
                        themeColor: Color(0xffE8EBEA),
                      ),
                      CarouselItem(
                        child: Image.asset(
                          "images/poster2.png",
                          fit: BoxFit.cover,
                        ),
                        themeColor: Color(0xffE4DBDB),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItem(
                        caption: "Category",
                        icon: Icon(Icons.category_outlined,
                            color: Colors.grey[700]),
                      ),
                      CategoryItem(
                        caption: "Flight",
                        icon: Icon(Icons.flight_outlined,
                            color: Colors.grey[700]),
                      ),
                      CategoryItem(
                        caption: "Bill",
                        icon: Icon(
                          Icons.description_outlined,
                          color: Colors.grey[700],
                        ),
                      ),
                      CategoryItem(
                        caption: "Data plan",
                        icon: Icon(Icons.language_outlined,
                            color: Colors.grey[700]),
                      ),
                      CategoryItem(
                        caption: "Top Up",
                        icon: Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  IndicatorDot(),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(pinned: true, delegate: FixedHeader()),
        ],
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.35,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          children: List.filled(5, ProductTile()),
        ),
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
