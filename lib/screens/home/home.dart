import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/emoji_text.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [EmojiText(), SearchInput()],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false, // start from left
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello Ifeoma!',
          style: TextStyle(fontSize: 16, color: kFontLight),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, right: 20),
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 20,
              ),
            ),
            Positioned(
              top: 16,
              right: 27,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
