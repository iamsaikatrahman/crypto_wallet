import 'package:flutter/material.dart';

class SortedText extends StatelessWidget {
  const SortedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Sorted by higher %',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFFaeb8c4),
            )),
        Row(
          children: [
            Text('24H',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFaeb8c4),
                )),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Color(0xFFaeb8c4),
            ),
          ],
        ),
      ],
    );
  }
}
