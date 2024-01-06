import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: kFontLight.withOpacity(0.3),
                width: 2,
              )
            ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: const EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search here...',
                hintStyle: const TextStyle(color: kFontLight),
              ),
            ),
          ),
          Positioned(
            right: 40,
            top: 33,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: kAccent, borderRadius: BorderRadius.circular(6)),
              child: Image.asset('assets/icons/search.png'),
            ),
          )
        ],
      ),
    );
  }
}
