import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  final searchUIColor = const Color(0xffABADAE);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: searchUIColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: searchUIColor, width: 1),
        ),
        isDense: true,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 12),
            SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset(
                "images/svgs/search.svg",
                fit: BoxFit.fitWidth,
                color: searchUIColor,
              ),
            ),
          ],
        ),
        hintText: 'Search',
        hintStyle: TextStyle(color: searchUIColor, fontSize: 16),
      ),
    );
  }
}
