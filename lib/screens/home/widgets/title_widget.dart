import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(
      {Key? key, required this.title, this.onTap, this.showViewAll = true})
      : super(key: key);
  final String title;
  final Function()? onTap;
  final bool showViewAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (showViewAll)
          TextButton(
            onPressed: onTap,
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            child: const Text(
              'View All',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
      ],
    );
  }
}
