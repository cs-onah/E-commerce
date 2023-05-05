import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final bool showBgColor;
  const ProductTile({super.key, this.showBgColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: showBgColor ? Colors.white : Colors.transparent,
      child: Column(
        children: [
          //Image
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                image: DecorationImage(image: AssetImage("images/jacket.png"), fit: BoxFit.cover,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shirt",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 4),
                Text(
                  "Essential Men's Short-Sleeve Crewneck T-shirt",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    const SizedBox(width: 5),
                    Text("4.9 | 2356",
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Spacer(),
                    Text(
                      "\$12.00",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}