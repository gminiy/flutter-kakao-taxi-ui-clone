import 'package:flutter/material.dart';
import 'package:kakao_taxi_ui_clone/banner_section.dart';
import 'package:kakao_taxi_ui_clone/home_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeMenuSection(),
          BannerSection(),
          Text('notification'),
        ],
      ),
    );
  }
}
