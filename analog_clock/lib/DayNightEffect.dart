import 'package:flutter/material.dart';

class DayNightEffect {
  int hour;
  List<String> colorPattern;

  DayNightEffect({this.hour});

  Map<String, dynamic> evaluateColorPattern() {
    switch (hour) {
      case 5:
        return {
          'colors': [
            Color(0xff8f91f2),
            Color(0xff9d9ef5),
            Color(0xff8f91f2),
            Color(0xff9d9ef5)
          ],
          'dialcolor': Colors.white70,
          'tickcolor': Colors.white
        };
      case 6:
        return {
          'colors': [
            Color(0xffb8b8f5),
            Color(0xffb3b3e3),
            Color(0xffbcbce3),
            Color(0xffcccce3)
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.white
        };

      case 7:
        return {
          'colors': [
            Color(0xff7ae0ff),
            Color(0xff86e1fc),
            Color(0xff93e2fa),
            Color(0xffb1e9fa)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.white
        };
      case 8:
        return {
          'colors': [
            Color(0xffd4f3fc),
            Color(0xffd7f0f7),
            Color(0xffe3f7fc),
            Color(0xfff5fdff)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.black38
        };
      case 9:
        return {
          'colors': [
            Color(0xffffffff),
            Color(0xfffffff2),
            Color(0xffffffe8),
            Color(0xffffffde)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.black38
        };
      case 10:
        return {
          'colors': [
            Color(0xffffffbd),
            Color(0xffffffb3),
            Color(0xffffff94),
            Color(0xffffff87)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.black26
        };
      case 11:
        return {
          'colors': [
            Color(0xffffff61),
            Color(0xffffff4a),
            Color(0xffffff30),
            Color(0xffffff17)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.black54
        };
      case 12:
        return {
          'colors': [
            Color(0xffffff00),
            Color(0xffe3df00),
            Color(0xffe3df00),
            Color(0xffffff00)
          ],
          'dialcolor': Colors.black87,
          'tickcolor': Colors.black54
        };
      case 13:
        return {
          'colors': [
            Color(0xffffff00),
            Color(0xffffffff),
            Color(0xffe3df00),
            Color(0xffffffff),
            Color(0xffe3df00),
            Color(0xffffffff),
          ],
          'dialcolor': Colors.black,
          'tickcolor': Colors.black54
        };
      case 14:
        return {
          'colors': [
            Color(0xffffff00),
            Color(0xfff9ff8a),
            Color(0xffffff00),
            Color(0xffe3df00),
            Color(0xfff9ff8a),
            Color(0xffe3df00),
            Color(0xffffff00),
            Color(0xfff9ff8a),
            Color(0xffe3df00),
            Color(0xfff9ff8a),
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.black
        };
      case 15:
        return {
          'colors': [
            Color(0xffffff00),
            Color(0xfff9ff8a),
            Color(0xffffff00),
            Color(0xffe3df00),
            Color(0xfff9ff8a),
            Color(0xffe3df00),
            Color(0xffffff00),
            Color(0xfff9ff8a),
            Color(0xffe3df00),
            Color(0xfff9ff8a),
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.black
        };
      case 16:
        return {
          'colors': [
            Color(0xffff9d52),
            Color(0xfffab682),
            Color(0xfff9ff8a),
            Color(0xffe89758),
            Color(0xffe89758),
            Color(0xfff9ff8a),
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.black
        };
      case 17:
        return {
          'colors': [
            Color(0xffff9442),
            Color(0xffffff00),
            Color(0xffbf651f),
            Color(0xffff9442),
            Color(0xffffff00),
            Color(0xffdb7221),
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.black
        };
      case 4:
        return {
          'colors': [
            Color(0xff21569c),
            Color(0xff194175),
            Color(0xff345e94),
            Color(0xff305380),
            Color(0xff194175),
            Color(0xff345e94),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };

      case 3:
        return {
          'colors': [
            Color(0xff14124a),
            Color(0xff1b178a),
            Color(0xff141b3d),
            Color(0xff3d3a9c),
            Color(0xff161375),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };

      case 2:
        return {
          'colors': [
            Color(0xff14124a),
            Color(0xff1b178a),
            Color(0xff141b3d),
            Color(0xff3d3a9c),
            Color(0xff161375),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };

      case 1:
        return {
          'colors': [
            Color(0xff14124a),
            Color(0xff1b178a),
            Color(0xff141b3d),
            Color(0xff3d3a9c),
            Color(0xff161375),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };

      case 0:
        return {
          'colors': [
            Color(0xff14124a),
            Color(0xff1b178a),
            Color(0xff141b3d),
            Color(0xff3d3a9c),
            Color(0xff161375),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };
      case 23:
        return {
          'colors': [
            Color(0xff14124a),
            Color(0xff1b178a),
            Color(0xff141b3d),
            Color(0xff3d3a9c),
            Color(0xff161375),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };
      case 22:
        return {
          'colors': [
            Color(0xff1d2963),
            Color(0xff17204d),
            Color(0xff141b3d),
            Color(0xff1c244d),
            Color(0xff17204d),
            Color(0xff141b3d),
          ],
          'dialcolor': Colors.grey,
          'tickcolor': Colors.white
        };
      case 21:
        return {
          'colors': [
            Color(0xff132794),
            Color(0xff0f207d),
            Color(0xff233596),
            Color(0xff001cb0),
            Color(0xff0f207d),
            Color(0xff233596),
          ],
          'dialcolor': Colors.white54,
          'tickcolor': Colors.white
        };
      case 20:
        return {
          'colors': [
            Color(0xff3d5da8),
            Color(0xff365396),
            Color(0xff2f4882),
            Color(0xff183c8f),
            Color(0xff365396),
            Color(0xff2f4882),

          ],
          'dialcolor': Colors.white54,
          'tickcolor': Colors.white
        };
      case 19:
        return {
          'colors': [
            Color(0xff1a97f0),
            Color(0xff188adb),
            Color(0xff1681cc),
            Color(0xff227fbf),
            Color(0xff4198bf)
          ],
          'dialcolor': Colors.white54,
          'tickcolor': Colors.white
        };
      case 18:
        return {
          'colors': [
            Color(0xff70d2ff),
            Color(0xff57c7fa),
            Color(0xff47c6ff),
            Color(0xff369ac7),
            Color(0xff4198bf)
          ],
          'dialcolor': Colors.black54,
          'tickcolor': Colors.white
        };
    }
  }
}
