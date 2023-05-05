import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  final int selectedIndex, length;
  const IndicatorDot({Key? key, this.selectedIndex = 0, this.length = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10 + ((length - 1) * 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [for (int i = 0; i < length; i++) dot(selectedIndex == i)],
      ),
    );
  }

  Widget dot([bool isSelected = false]) {
    if (isSelected) {
      return Container(
        width: 10,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.black,
        ),
      );
    }
    return Container(
      height: 4,
      width: 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[400],
      ),
    );
  }
}
