import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';

class DailyCheckIn extends StatefulWidget {
  const DailyCheckIn({Key? key}) : super(key: key);
  static const String id = 'daily_check_in';

  @override
  _DailyCheckInState createState() => _DailyCheckInState();
}

class _DailyCheckInState extends State<DailyCheckIn> {
  var _isPressed = 0;
  var backColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    final textInputController = TextEditingController();
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: backColor,
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,

            // appBar: AppBar(.0
            //   backgroundColor: Colors.transparent,
            //   title: Text('Healthy Brain'),
            // ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Hows it been today?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildAvatarGlowGreen(),
                      buildAvatarGlowRed(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: textInputController,
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: 7,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Comment On Your Well Being Here...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      onChanged: (val) {
                        val = textInputController.text.toString();
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('Submit')),
                  const Spacer(),
                ],
              ),
            )),
      ),
    );
  }

  AvatarGlow buildAvatarGlowRed() {
    return AvatarGlow(
      glowColor: Colors.deepPurple,
      endRadius: 80.0,
      duration: const Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: false,
      repeatPauseDuration: const Duration(milliseconds: 100),
      child: Material(
        color: Colors.white, // Replace this child with your own
        elevation: 8.0,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 48,
            // backgroundColor: Colors.green[100],
            // child: IconButton(
            //  icon: Icon(FontAwesomeIcons.thumbsUp),
            //   onPressed: () {  },
            // ),
            // radius: 40.0,
            onPressed: () {
              setState(() {
                if (_isPressed == 0) {
                  _isPressed = 2;
                  backColor = Colors.red[900]!;
                  print(_isPressed);
                } else if (_isPressed == 1) {
                  _isPressed = 2;
                  backColor = Colors.red[900]!;
                }
              });
            },
            icon: Icon(
              FontAwesomeIcons.solidThumbsDown,
              color: Colors.red[900],
            ),
          ),
        ),
      ),
    );
  }

  AvatarGlow buildAvatarGlowGreen() {
    return AvatarGlow(
      glowColor: Colors.lightBlueAccent,
      endRadius: 80.0,
      duration: const Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: false,
      repeatPauseDuration: const Duration(milliseconds: 100),
      child: Material(
        color: Colors.white, // Replace this child with your own
        elevation: 8.0,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 48,
            // backgroundColor: Colors.green[100],
            // child: IconButton(
            //  icon: Icon(FontAwesomeIcons.thumbsUp),
            //   onPressed: () {  },
            // ),
            // radius: 40.0,
            onPressed: () {
              setState(() {
                if (_isPressed == 0) {
                  _isPressed = 1;
                  backColor = Colors.blue[900]!;
                  print(_isPressed);
                } else if (_isPressed == 2) {
                  _isPressed = 1;
                  backColor = Colors.blue[900]!;
                }
              });
            },
            icon: Icon(
              FontAwesomeIcons.solidThumbsUp,
              color: Colors.blue[900],
            ),
          ),
        ),
      ),
    );
  }
}
