import 'package:flutter/material.dart';

class BadgedIcon extends StatelessWidget {
  final Widget icon;
  final String? badgeText;
  const BadgedIcon({
    super.key, required this.icon, this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: 34,
      child: Stack(alignment: Alignment.topCenter, children: [
        Align(alignment: Alignment.bottomCenter, child: icon),
        Positioned(
          right: 0,
          child: Container(
            height: 16,
            width: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              color: Color(0xffE65B87),
            ),
            child: Center(
              child: Text(
                badgeText ?? '1',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
