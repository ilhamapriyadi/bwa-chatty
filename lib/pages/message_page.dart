// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      final String? imageUrl,
      final String? text,
      final String? time,
    }) {
      return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          imageUrl!,
          width: 40,
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xffEBEFF3),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text!,
                style: subTitle,
              ),
              Text(
                time!,
                style: textNormal.copyWith(fontSize: 11),
              ),
            ],
          ),
        )
      ]);
    }

    Widget senderBubble({
      final String? imageUrl,
      final String? text,
      final String? time,
    }) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text!,
                    style: subTitle,
                  ),
                  Text(
                    time!,
                    style: textNormal.copyWith(fontSize: 11),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Image.asset(
              imageUrl!,
              width: 40,
            ),
          ]);
    }

    Widget header() {
      return Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(30),
        height: 115,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/group1.png'),
            SizedBox(
              width: 12,
            ),
            Column(
              children: [
                Text(
                  'Jakarta Fair',
                  style: title,
                ),
                Text(
                  '14,209 members',
                  style: textNormal.copyWith(color: grey2),
                )
              ],
            ),
            Spacer(),
            Image.asset('assets/btn.png')
          ],
        ),
      );
    }

    Widget inputChat() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mau ngetik apa...',
              style: textNormal.copyWith(color: grey2),
            ),
            Image.asset(
              'assets/send_btn.png',
              width: 35,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            receiverBubble(
              imageUrl: 'assets/friend1.png',
              text: 'Nyate boy peting daging loba yeh',
              time: '20:00',
            ),
            SizedBox(height: 15),
            receiverBubble(
              imageUrl: 'assets/friend2.png',
              text: 'Gak dulu co, besok kerja gue',
              time: '20:00',
            ),
            SizedBox(height: 15),
            senderBubble(
              imageUrl: 'assets/friend2.png',
              text: 'Gak dulu co, besok kerja gue',
              time: '20:00',
            ),
            SizedBox(height: 15),
            receiverBubble(
              imageUrl: 'assets/friend2.png',
              text: 'yah ga lucu lo mah',
              time: '20:00',
            ),
          ],
        ),
      ));
    }

    return Scaffold(
      floatingActionButton: inputChat(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
          child: Column(
        children: [
          header(),
          body(),
        ],
      )),
    );
  }
}
