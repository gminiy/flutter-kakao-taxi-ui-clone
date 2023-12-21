import 'package:flutter/material.dart';
import 'package:kakao_taxi_ui_clone/widget/icon_bottom_label.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconBottomLabel(
                image: 'assets/taxi.png',
                label: '택시',
              ),
              IconBottomLabel(
                image: 'assets/taxi_black.png',
                label: '블랙',
              ),
              IconBottomLabel(
                image: 'assets/bicycle.png',
                label: '바이크',
              ),
              IconBottomLabel(
                image: 'assets/steering_wheel.png',
                label: '카풀',
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconBottomLabel(
                image: 'assets/parking.png',
                label: '주차',
              ),
              IconBottomLabel(
                image: 'assets/car_pool.png',
                label: '카풀',
              ),
              IconBottomLabel(
                image: 'assets/navigation.png',
                label: '네비',
              ),
              Opacity(
                opacity: 0.0,
                child: IconBottomLabel(
                  image: 'assets/navigation.png',
                  label: '투명한 아이콘',
                ),
              ),
            ],
          ),
          Text('banners'),
          Text('notification'),
        ],
      ),
    );
  }
}
