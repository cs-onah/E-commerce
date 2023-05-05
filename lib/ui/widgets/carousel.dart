import 'package:dribble_design/ui/widgets/indicator_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Carousel extends HookWidget {
  final List<CarouselItem> children;
  const Carousel({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final page = useState(0);
    return SizedBox(
      height: 200 + 60 + MediaQuery.of(context).padding.top + 5,
      child: PageView(
        onPageChanged: (i)=> page.value = i,
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
                    Stack(
                      children: [
                        SizedBox(height: 200, child: item.child),
                        Positioned(top: 20, right: 30, child: IndicatorDot(selectedIndex: page.value)),
                      ],
                    )
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
