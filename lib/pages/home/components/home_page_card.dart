import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final Widget? bottonWidget;
  final double imageHeight;
  final double imageWidth;
  final String title;
  final bool hasButton;
  final Color cardColor;
  final double topPadding;
  const HomePageCard({
    Key? key,
    this.bottonWidget,
    required this.title,
    required this.cardColor,
    this.topPadding = 24,
    this.hasButton = true,
    this.imageHeight = 90,
    this.imageWidth = 90,
  }) : super(key: key);

  factory HomePageCard.big({
    required String title,
    required String bottonTextTitle,
    required String bottonTextDescription,
    required Color cardColor,
    double? topPadding,
  }) {
    return HomePageCard(
      imageHeight: 60,
      imageWidth: 60,
      cardColor: cardColor,
      title: title,
      topPadding: topPadding ?? 24,
      bottonWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            bottonTextTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(bottonTextDescription),
        ],
      ),
      hasButton: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: topPadding,
        bottom: 24,
        left: 24,
        right: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  hasButton
                      ? Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Join Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              Container(
                height: imageHeight,
                width: imageWidth,
                color: Colors.red,
              ),
            ],
          ),
          bottonWidget ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
