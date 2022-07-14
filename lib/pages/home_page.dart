// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:bwa_chatty/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bwa_chatty/widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/pic.png',
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: lightPrimary,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Friends',
                    style: title,
                  ),
                  ChatTile(
                    imageUrl: 'assets/friend1.png',
                    name: 'Furqon Aqil',
                    text: 'Hallo guys',
                    time: 'Now',
                    read: false,
                  ),
                  ChatTile(
                    imageUrl: 'assets/friend2.png',
                    name: 'Salma Sri Wardani',
                    text: 'Hallo guys',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/friend3.png',
                    name: 'Hilman Fahrurrozi',
                    text: 'Kemana aja kmu ce',
                    time: 'Now',
                    read: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Groups',
                    style: title,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group1.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group2.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group3.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group1.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group2.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                  ChatTile(
                    imageUrl: 'assets/group3.png',
                    name: 'Jakarta Developer',
                    text: 'aku disini, dan kau',
                    time: 'Now',
                    read: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
