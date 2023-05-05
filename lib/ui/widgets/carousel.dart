import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<CarouselItem> children;
  const Carousel({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200 + 60 + MediaQuery.of(context).padding.top + 5,
      child: PageView(
        children: children
            .map(
              (item) => Container(
                color: item.themeColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 60 + MediaQuery.of(context).padding.top + 5,
                    ),
                    //carousel content
                    SizedBox(height: 200, child: item.child)
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class CarouselItem {
  final Widget child;
  final Color themeColor;
  CarouselItem({required this.child, required this.themeColor});
}
