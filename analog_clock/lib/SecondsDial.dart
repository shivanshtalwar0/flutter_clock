import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class SecondsDial extends StatefulWidget {
  final int seconds;
  final Color tickcolor;
  final Color dialcolor;

  SecondsDial({this.seconds, this.tickcolor, this.dialcolor});

  @override
  _SecondsDialState createState() => _SecondsDialState();
}

class _SecondsDialState extends State<SecondsDial> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox.expand(
            child: CustomPaint(
                painter: ClockDialPainter(
                    seconds: widget.seconds,
                    tickcolor: widget.tickcolor,
                    dialcolor: widget.dialcolor))));
  }
}

class ClockDialPainter extends CustomPainter {
  final clockText;

  final hourTickMarkLength = 16.0;
  final seconds;
  final minuteTickMarkLength = 12.0;
  final Color dialcolor;
  final Color tickcolor;

  final hourTickMarkWidth = 5.0;
  final minuteTickMarkWidth = 5.0;

  final Paint tickPaint;
  final TextPainter textPainter;
  TextStyle textStyle;

  final romanNumeralList = [
    'XII',
    'I',
    'II',
    'III',
    'IV',
    'V',
    'VI',
    'VII',
    'VIII',
    'IX',
    'X',
    'XI'
  ];

  ClockDialPainter(
      {@required this.seconds,
      this.clockText = ClockText.arabic,
      this.dialcolor = Colors.grey,
      @required this.tickcolor})
      : tickPaint = new Paint(),
        textPainter = new TextPainter(
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        textStyle = const TextStyle(
          color: Colors.white,
          fontFamily: 'Times New Roman',
          fontSize: 15.0,
        ) {
    tickPaint.color = tickcolor;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = (Offset.zero & size).center;

    var tickMarkLength;
    final angle = 2 * math.pi / 60;
    final radius = size.height / 2;
    canvas.save();

    // drawing
    canvas.translate(center.dx, center.dy);
    for (var i = 0; i < 60; i++) {
      //make the length and stroke of the tick marker longer and thicker depending
      tickMarkLength = i % 5 == 0 ? hourTickMarkLength : minuteTickMarkLength;
      tickPaint.strokeWidth =
          i % 5 == 0 ? hourTickMarkWidth : minuteTickMarkWidth;

      if (seconds == i) {
        tickPaint.color = tickcolor;
        this.textStyle = TextStyle(
          color: tickcolor,
          fontFamily: 'Times New Roman',
          fontSize: 15.0,
        );
      } else {
        tickPaint.color = dialcolor;
        this.textStyle = TextStyle(
          color: dialcolor,
          fontFamily: 'Times New Roman',
          fontSize: 15.0,
        );
      }

      canvas.drawLine(new Offset(0, -radius),
          new Offset(0, -radius + tickMarkLength), tickPaint);

      //draw the text
      if (i % 5 == 0) {
        canvas.save();
        canvas.translate(0.0, -radius + 25.0);

        textPainter.text = new TextSpan(
          text: this.clockText == ClockText.roman
              ? '${romanNumeralList[i ~/ 5]}'
              : '${i == 0 ? 12 : i ~/ 5}',
          style: textStyle,
        );

        //helps make the text painted vertically
        canvas.rotate(-angle * i);

        textPainter.layout();

        textPainter.paint(canvas,
            new Offset(-(textPainter.width / 2), -(textPainter.height / 2)));

        canvas.restore();
      }

      canvas.rotate(angle);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

enum ClockText { roman, arabic }
