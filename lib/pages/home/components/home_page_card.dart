import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final Widget? bottonWidget;
  final double imageHeight;
  final double imageWidth;
  final String title;
  final bool hasButton;
  const HomePageCard({
    Key? key,
    this.bottonWidget,
    required this.title,
    this.hasButton = true,
    this.imageHeight = 100,
    this.imageWidth = 100,
  }) : super(key: key);
  factory HomePageCard.big(
      {required String title, required Widget bottonWidget}) {
    return HomePageCard(
      imageHeight: 50,
      imageWidth: 50,
      title: title,
      bottonWidget: bottonWidget,
      hasButton: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 212, 212, 212),
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
                  Text(title),
                  const SizedBox(
                    height: 32,
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
