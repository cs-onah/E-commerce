import 'package:dribble_design/ui/transitions/slide_opacity_transition.dart';
import 'package:dribble_design/ui/widgets/badged_icon.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFAFAFA),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Image.asset("images/favorite.png"),
          Icon(Icons.share_outlined),
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
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        enableDrag: false,
        elevation: 5,
        builder: (_) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 20,
              right: 20,
              left: 20,
              top: 20,
            ),
            width: double.infinity,
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "\$18.00",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 20),
                      Icon(Icons.local_mall_outlined, color: Colors.white),
                      const SizedBox(width: 8),
                      Text("1", style: TextStyle(color: Colors.white)),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                Container(
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      body: SlideOpacityTransition(
        duration: Duration(milliseconds: 800),
        child: DefaultTabController(
          length: 2,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
            children: [
              Image.asset("images/jacket_options.png", fit: BoxFit.fitWidth),
              const SizedBox(height: 26),
              Row(
                children: [
                  Icon(Icons.storefront_outlined, color: Colors.grey),
                  const SizedBox(width: 10),
                  Text(
                    "tokobaju.id",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "Essential Men's Short-Sleeve Crewneck T-shirt",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 5),
                      Text("4.9 Rating", style: captionStyle),
                    ],
                  ),
                  Icon(Icons.circle, size: 5, color: Colors.grey),
                  Text("2.3k+ Reviews", style: captionStyle),
                  Icon(Icons.circle, size: 5, color: Colors.grey),
                  Text("2.9k+ Sold", style: captionStyle),
                ],
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 33,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Divider(
                          height: 5,
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                      ),
                      TabBar(
                        tabs: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("About Item"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Reviews"),
                          )
                        ],
                        indicatorColor: Colors.green,
                        isScrollable: true,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        indicatorWeight: 3,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: TabBarView(
                  children: [
                    Row(
                      children: [
                        Text("Brand: CharmkpR"),
                        Spacer(),
                        Text("Color: Brown"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Brand: CharmkpR"),
                        Spacer(),
                        Text("Color: Brown"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle get captionStyle => TextStyle(
        color: Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}
