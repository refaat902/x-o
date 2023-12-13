import 'package:flutter/material.dart';
import 'package:xno/views/xo/win_screen.dart';

class XOScreen extends StatefulWidget {
  static const String route = "xoscreen";

  const XOScreen({super.key});

  @override
  State<XOScreen> createState() => _XOScreenState();
}

class _XOScreenState extends State<XOScreen> {
  String d = "-";
  bool player = true;
  String textplayer = "player x turn";
  int games = 0;
  int scoreX = 0;
  int scoreO = 0;
  List<String> list = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[350],
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 390,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (list[index] == "") {
                          if (player) {
                            setState(() {
                              list[index] = "x";
                            });
                          } else {
                            setState(() {
                              list[index] = "o";
                            });
                          }
                          if (player) {
                            setState(() {
                              player = false;
                              textplayer = "player o turn";
                            });
                          } else {
                            setState(() {
                              player = true;
                              textplayer = "player x turn";
                            });
                          }
                        }
                        if ((list[0] == "x" &&
                                list[1] == "x" &&
                                list[2] == "x") ||
                            (list[3] == "x" &&
                                list[4] == "x" &&
                                list[5] == "x") ||
                            (list[6] == "x" &&
                                list[7] == "x" &&
                                list[8] == "x") ||
                            (list[0] == "x" &&
                                list[3] == "x" &&
                                list[6] == "x") ||
                            (list[1] == "x" &&
                                list[4] == "x" &&
                                list[7] == "x") ||
                            (list[2] == "x" &&
                                list[5] == "x" &&
                                list[8] == "x") ||
                            (list[0] == "x" &&
                                list[4] == "x" &&
                                list[8] == "x") ||
                            (list[2] == "x" &&
                                list[4] == "x" &&
                                list[6] == "x")) {
                          setState(() {
                            d = "player x winssss:))))";
                            games += 1;
                            scoreX += 100;
                            list = ["", "", "", "", "", "", "", "", ""];
                            player = true;
                            textplayer = "player x turn";
                          });
                        }
                        if ((list[0] == "o" &&
                                list[1] == "o" &&
                                list[2] == "o") ||
                            (list[3] == "o" &&
                                list[4] == "o" &&
                                list[5] == "o") ||
                            (list[6] == "o" &&
                                list[7] == "o" &&
                                list[8] == "o") ||
                            (list[0] == "o" &&
                                list[3] == "o" &&
                                list[6] == "o") ||
                            (list[1] == "o" &&
                                list[4] == "o" &&
                                list[7] == "o") ||
                            (list[2] == "o" &&
                                list[5] == "o" &&
                                list[8] == "o") ||
                            (list[0] == "o" &&
                                list[4] == "o" &&
                                list[8] == "o") ||
                            (list[2] == "o" &&
                                list[4] == "o" &&
                                list[6] == "o")) {
                          setState(() {
                            d = "player o winssss:))))";
                            games += 1;
                            scoreO += 100;
                            list = ["", "", "", "", "", "", "", "", ""];
                            player = false;
                            textplayer = "player o turn";
                          });
                        }
                        if ((list[0] == "x" || list[0] == "o") &&
                            (list[1] == "x" || list[1] == "o") &&
                            (list[2] == "x" || list[2] == "o") &&
                            (list[3] == "x" || list[3] == "o") &&
                            (list[4] == "x" || list[4] == "o") &&
                            (list[5] == "x" || list[5] == "o") &&
                            (list[6] == "x" || list[6] == "o") &&
                            (list[7] == "x" || list[7] == "o") &&
                            (list[8] == "x" || list[8] == "o")) {
                          setState(() {
                            d = "droww";
                            list = ["", "", "", "", "", "", "", "", ""];
                          });
                        }
                        if (games == 3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WinScreen.text(
                                        t: d,
                                      )));
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            list[index],
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // Text(
            //   d,
            //   style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Games:$games",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "ScoreX:$scoreX",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "ScoreO:$scoreO",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              textplayer,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
