import 'package:flutter/material.dart';

class FixedHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      context,
      double shrinkOffset,
      bool overlapsContent,
      ) =>
      Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              color: Color(0xffFAFAFA),
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Best Sale Product",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}