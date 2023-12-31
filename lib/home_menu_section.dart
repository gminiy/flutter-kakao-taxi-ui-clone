import 'package:flutter/material.dart';
import 'package:kakao_taxi_ui_clone/widget/icon_bottom_label.dart';

class HomeMenuSection extends StatelessWidget {
  const HomeMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
      ],
    );
  }
}
