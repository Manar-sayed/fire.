import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';


class TextWithIcon extends StatelessWidget {
  const TextWithIcon({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColors().white,
            size: 30,
          ),
          const SizedBox(
            width: 9,
          ),
          Text(
            text,
            style: GoogleFonts.cairo(
                fontSize: 20,
                color: MyColors().white,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  const WhiteText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: MyColors().white, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}

class BlackText extends StatelessWidget {
  const BlackText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
    );
  }
}

class GreyText extends StatelessWidget {
  const GreyText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.grey, fontSize: 19, fontWeight: FontWeight.w700),
    );
  }
}

class GreyRow extends StatelessWidget {
  const GreyRow({Key? key, required this.text, required this.secondText})
      : super(key: key);
  final String text;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          GreyText(text: text),
          const GreyText(text: ' : '),
          GreyText(text: secondText)
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      height: 70,
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: MyColors().white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlackText(text: text),
            Icon(
              Icons.folder,
              size: 30,
              color: MyColors().primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
