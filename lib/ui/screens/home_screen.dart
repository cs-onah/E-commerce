import 'package:dribble_design/ui/screens/product_detail_screen.dart';
import 'package:dribble_design/ui/transitions/dismiss_transition.dart';
import 'package:dribble_design/ui/transitions/slide_opacity_transition.dart';
import 'package:dribble_design/ui/widgets/badged_icon.dart';
import 'package:dribble_design/ui/widgets/carousel.dart';
import 'package:dribble_design/ui/widgets/category_item.dart';
import 'package:dribble_design/ui/widgets/fixed_header.dart';
import 'package:dribble_design/ui/widgets/indicator_dot.dart';
import 'package:dribble_design/ui/widgets/product_tile.dart';
import 'package:dribble_design/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends HookWidget {
  final appBarMaxHeight = 200 + 125;

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: Duration(milliseconds: 600));
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: DismissTransition(
        controller: controller,
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
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
                      Icons.local_mall_outlined,
                      size: 30,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Center(
                  child: BadgedIcon(
                    badgeText: "9+",
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
            children: [
              ProductTile(
                showBgColor: true,
                isFavorite: true,
                onClick: () {
                  controller.forward().then((value) async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: ProductDetailScreen(),
                      ),
                    );
                    controller.reset();
                  });
                },
              ),
              ...List.filled(4, ProductTile()),
            ],
          ),
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
