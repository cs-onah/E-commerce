import 'package:dribble_design/ui/transitions/slide_opacity_transition.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SlideOpacityTransition(child: Placeholder()),
    );
  }
}
