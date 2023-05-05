import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Widget icon;
  final String caption;
  const CategoryItem({
    super.key,
    required this.icon,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Color(0xffF6F6F6),
          ),
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(height: 4),
        Text(caption, style: TextStyle(color: Color(0xffB5B5B5))),
      ],
    );
  }
}