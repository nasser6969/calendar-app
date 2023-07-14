import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Projects extends StatelessWidget {
  const Projects(
      {Key? key,
      required this.title,
      required this.color,
      required this.progress,
      required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;
  final Color color;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 50,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            animationDuration: 1000,
            radius: 35,
            percent: progress / 100,
            center: Text(
              '${progress.toInt()}%',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17),
            ),
            progressColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
