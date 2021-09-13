import 'package:flutter/material.dart';

class CountViewerWidget extends StatelessWidget {
  const CountViewerWidget(
      {Key? key,
      this.completedCount = 0,
      this.totalCount = 0,
      this.remainingCount = 0})
      : super(key: key);
  final int completedCount;
  final int totalCount;
  final int remainingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 2,
        ),
        ...countElement(Colors.green, completedCount),
        const SizedBox(
          width: 15,
        ),
        ...countElement(Colors.grey, totalCount),
        const SizedBox(
          width: 15,
        ),
        ...countElement(Colors.red, remainingCount),
      ],
    );
  }

  List<Widget> countElement(Color color, int count) {
    return [
      CircleAvatar(
        radius: 4,
        backgroundColor: color,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        '$count',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    ];
  }
}
