import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestMods extends StatelessWidget {
  const QuestMods({Key? key}) : super(key: key);

  TableRow buildRow(List<String> cells) => TableRow(
        children: cells.map((cell) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Center(child: Text(cell)),
          );
        }).toList(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest Mods'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Quest Mods",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text: 'Table of quest mods:',
                  ),
                ],
              ),
            ),
          ),
          Table(
            border: TableBorder.all(),
            children: [
              buildRow(['Appear', 'Vanish', 'Flash', 'Nonstep', 'Boost']),
              buildRow(['Brake', 'Wave', 'Expand', 'Boomerang', 'Drunk']),
              buildRow(['Dizzy', 'Confusion', 'Mini', 'Tiny', 'Flip']),
              buildRow(['Invert', 'Tornado', 'Tipsy', 'Bumpy', 'Beat']),
              buildRow(['XMode', 'Twirl', 'Roll', 'Rise', 'Hidden']),
              buildRow([
                'HiddenOffset',
                'Sudden',
                'SuddenOffset',
                'Stealth',
                'Blink'
              ]),
              buildRow(
                  ['RandomVanish', 'Reverse', 'Split', 'Alternate', 'Cross']),
              buildRow(['Centered', 'Dark', 'Blind', 'Cover', 'RandomSpeed']),
              buildRow(['Mirror', 'Backwards', 'SuperShuffle', 'Wide', 'Big']),
              buildRow([
                'NXMode',
                'UnderAttack',
                'LeftAttack',
                'RightAttack',
                'Drop'
              ]),
              buildRow(
                  ['Snake', 'ZigZag', '100% Rise', '-100% Rise', 'HideJudge']),
              buildRow([
                'ExtraJudgement',
                'HardJudgement',
                'VeryHardJudgement',
                'UltraHardJudgement',
                'JudgeReverse'
              ]),
              buildRow(['BreakOff', 'Move*', 'MoveX *', 'MoveY*', 'MoveZ*']),
              buildRow(['SwapSides', '', '', '', '']),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                    text: 'Move- require column index\n',
                  ),
                  TextSpan(
                    text: 'MoveX- require column index after X\n',
                  ),
                  TextSpan(
                    text: 'MoveY- require column index after Y\n',
                  ),
                  TextSpan(
                    text: 'MoveZ- require column index after Z\n',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
