import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        centerTitle: false, // start from left
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello Ifeoma!',
            style: TextStyle(fontSize: 16, color: kFontLight),
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  '../../assets/icons/notification.png',
                  width: 30,
                )
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}