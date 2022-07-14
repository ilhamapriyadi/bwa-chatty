import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

Widget ChatTile({
  final String? imageUrl,
  final String? name,
  final String? text,
  final String? time,
  final bool? read,
}) {
  return Column(
    children: [
      SizedBox(height: 20),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl!,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!,
                style: title,
              ),
              Text(
                text!,
                style: read! ? textNormal : textNormal.copyWith(color: grey2),
              )
            ],
          ),
          Spacer(),
          Text(
            time!,
            style: textNormal,
          ),
        ],
      ),
    ],
  );
}
