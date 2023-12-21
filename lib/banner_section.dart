import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  Card _buildCard(
      {String text1 = '',
      Color text1Color = Colors.black,
      String text2 = '',
      Color text2Color = Colors.black,
      String text3 = '',
      Color text3Color = Colors.black,
      String imageUrl = '',
      Color color = Colors.black}) {
    return Card(
        color: color,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontSize: 22, color: text1Color),
                    ),
                    Text(
                      text2,
                      style: TextStyle(fontSize: 22, color: text2Color),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      text3,
                      style: TextStyle(fontSize: 12, color: text3Color),
                    ),
                  ],
                )),
                Image.network(
                  imageUrl,
                  width: 120,
                  height: 120,
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 150,
      child: PageView(
        controller: controller,
        children: [
          _buildCard(
              color: Colors.lightGreen,
              text1: '그러게 일찍 좀',
              text1Color: Colors.white,
              text2: '일어나지 그랬어',
              text2Color: Colors.white,
              text3: '기왕 늦은거 편하게 택시타고 가자',
              imageUrl:
                  'https://mblogthumb-phinf.pstatic.net/20160510_32/mkhjsk_14628892954266DY4i_PNG/1.png?type=w420'),
          _buildCard(
              color: Colors.yellow,
              text1: '지금 출발할거면',
              text1Color: Colors.cyan,
              text2: '그냥 잠이나 더 자',
              text2Color: Colors.cyan,
              text3: '안되면 택시라도 타야겠지?',
              imageUrl:
              'https://mblogthumb-phinf.pstatic.net/20160510_32/mkhjsk_14628892954266DY4i_PNG/1.png?type=w420'),
          _buildCard(
              color: Colors.lightBlue,
              text1: '택시비 많이 올랐던데',
              text1Color: Colors.white,
              text2: '오늘 또 점심 굶어야겠네',
              text2Color: Colors.white,
              text3: '이제 돈 아까운 줄 알겠니?',
              imageUrl:
              'https://mblogthumb-phinf.pstatic.net/20160510_32/mkhjsk_14628892954266DY4i_PNG/1.png?type=w420'),
        ],
      ),
    );
  }
}
