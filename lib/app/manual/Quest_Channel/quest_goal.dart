import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens_page/gallery_image.dart';

class QuestGoal extends StatelessWidget {
  const QuestGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest Goal'),
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
                  "Quest Goal",
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
                    text:
                        "There are two ways to create a quest goal, it can be based on LUA or INI. INI is only for basic requisite, while LUA is more advanced. These files should be attached in the same folder of the Song, and they can't be activated at the same time. So choose wisely.",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "\n\nSong Folder should contain the INI File or the LUA file (Lua file can have any name, and ini file should be called",
                    ),
                    TextSpan(
                      text: " 'QuestConfig'",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const GalleryImage(
            'questgoal1',
            AssetImage('images/questgoal1.jpg'),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "INI Goal",
                style: GoogleFonts.lato(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "Quest Goal from INI its a simple way to create a requisite for the stepcharts in the songfolder. Remember, this system is only for basic requisites. Create a file text called QuestConfig but with the INI extension.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nINI structure is splitted in S1 S2 S3 S4 and the keys inside are the requisite per step, you can use multiple keys.",
                    ),
                    TextSpan(
                      text: "\n\nExample: QuestConfig.ini",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "[S1]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nGRADE",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=SSS",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S2]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nGRADE",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=SSS,SS,S,A",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S3]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nMISS",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=<",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "25",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S4]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nFLAG",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=BREAK",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "OFF",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.blueAccent,
                        ),
                      ),
                      TextSpan(
                        text: ", AUTOPLAY",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          DataTable(columns: [
            DataColumn(
                label: Text(
              'Key',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Value_Type',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Description',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Aditional_Values',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('PERFECT')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many perfects player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('GREAT')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many greats player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('GOOD')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many good player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('BAD')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many bad player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('MISS')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many miss player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('HEART')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many hearts player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('POTION')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many potions player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('MINE')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many mines player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('ITEMS')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many total items player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('VELOCITY')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many velocity items player need to do in order to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('HIDDEN')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'How many hidden items/taps player need to do in order to pass.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('MAXCOMBO')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'Set Max Combo player need to reach to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('MISSCOMBO')),
              DataCell(Text('Numeric')),
              DataCell(Text(
                  'Set Max Combo player need to reach to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('LIFEBAR')),
              DataCell(Text('Numeric/Float')),
              DataCell(Text(
                  'Set LifeBar player need to do to pass the quest (0 to 100).')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('SCORE')),
              DataCell(Text('Numeric')),
              DataCell(Text('Set Score player need to do to pass the quest.')),
              DataCell(Text('> or <')),
            ]),
            DataRow(cells: [
              DataCell(Text('GRADE')),
              DataCell(Text('String')),
              DataCell(Text('Set Grade player need to do to pass the quest.')),
              DataCell(Text('Multiple Values')),
            ]),
            DataRow(cells: [
              DataCell(Text('FLAG')),
              DataCell(Text('String')),
              DataCell(Text('Set Special Flags in ordet to pass the quest..')),
              DataCell(Text('Multiple Values')),
            ]),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text: "\nMultiple Values on Keys:\n",
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "GRADE",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": SSS, SS, S, A, B, C, D, F\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "FLAG",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ": QuestMode doesnt allow autoplay or breakoff, because autoplay will give you a failed mission, and breakoff will give you the stagebreak screen with a failed mission. Add these flags to allow the game pass the quest.\n",
                    ),
                    TextSpan(
                      text: "AUTOPLAY",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Declare this stepchart has autoplay mod.\n",
                    ),
                    TextSpan(
                      text: "BREAKOFF",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Declare this stepchart has breakoff mod.",
                    ),
                    const TextSpan(
                      text:
                          "\n\nThis is an example of QuestConfig.ini. STEP1 requires Grade A or S to pass, STEP2 requires to press less than 80 Mines and it has breakoff mod activated, STEP3 requires MAXCOMBO more or equal than 200000 and 40 Potions with a lifebar of 50% or less, STEP4 needs only survive until the end.",
                    ),
                    TextSpan(
                      text: "\n\nExample: QuestConfig.ini",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "[S1]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nGRADE",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=S,A",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S2]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nMINE",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=<",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "79",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\nFLAG",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=BREAK",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "OFF",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.blueAccent,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S3]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: "\nMAXCOMBO",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=>",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "200000",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\nPOTION",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "40",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\nLIFEBAR",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "=<",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                      TextSpan(
                        text: "50",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: "\n[S4]",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "\nSave the file, and test it in game to be sure its working.\n",
                    ),
                    TextSpan(
                      text: "\nLUA Goal",
                      style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    const TextSpan(
                      text:
                          "\nCreating a Quest Goal based on LUA could be difficulty, so you need to be careful of what are you doing here. if you are beginner we recommend you to start reading a manual from this language. LUA will help you IE to count Tap NoteSkins.\n",
                    ),
                    const TextSpan(
                      text:
                          "First at all you should create a text file with whatever name but with a LUA extension (Quest_Goal.Lua) in the song folder. And you need to link this file into the SimFile (ssc) You can add it from the StepEditor on #FGChanges, or add it manually opening the ssc file.\n",
                    ),
                    TextSpan(
                      text:
                          "\n#FGChanges on Simfile, calling Quest_Goal.lua (should be located on Song Segment)",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "#FGCHANGES:-100.000=Quest_Goal.lua=1.000=0=0=1=====,;	",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "\nOpen Quest_Goal.lua and define an Actor Frame as a return, and insert GameplayFinishMessageCommand\n",
                    ),
                    TextSpan(
                      text: "\nQuest_Goal.lua\n",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const GalleryImage(
            'questgoal2',
            AssetImage('images/questgoal2.PNG'),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "This is a list of commands that will return a value, they are called from pnStageStats and after getting the values, you should set SetSuccess(true) command to make a MISSION SUCCESS otherwise it will get automatically MISSION FAILED.\n",
                    ),
                  ],
                ),
              ),
            ),
          ),
          DataTable(columns: [
            DataColumn(
                label: Text(
              'Command',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Result_Description',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('GetTapNoteScores("TapNoteScore")')),
              DataCell(Text(
                  'Get Total Score from specified TapNote (see table below)')),
            ]),
            DataRow(cells: [
              DataCell(Text('MaxCombo()')),
              DataCell(Text('	Get Max Combo')),
            ]),
            DataRow(cells: [
              DataCell(Text('MaxMissCombo()')),
              DataCell(Text('	Get Max Miss Combo')),
            ]),
            DataRow(cells: [
              DataCell(Text('GetCurrentLife()')),
              DataCell(Text('Get Current Life value from LifeBar')),
            ]),
            DataRow(cells: [
              DataCell(Text('GetScore()')),
              DataCell(Text('Get Score')),
            ]),
            DataRow(cells: [
              DataCell(Text('GetGrade()')),
              DataCell(Text('Get Grade (see table below)')),
            ]),
            DataRow(cells: [
              DataCell(Text('GetScore()')),
              DataCell(Text('Get Score')),
            ]),
            DataRow(cells: [
              DataCell(Text('MaxComboSkin("NoteSkin Value")')),
              DataCell(Text(
                  'Get Max Combo from specified NoteSkin (see table below)')),
            ]),
            DataRow(cells: [
              DataCell(Text('MaxMissComboSkin("NoteSkin Value")')),
              DataCell(Text(
                  'Get Max Miss Combo from specified NoteSkin (see table below)')),
            ]),
            DataRow(cells: [
              DataCell(
                  Text('GetTapNoteSkin("NoteSkin Value", "TapNoteScore")')),
              DataCell(Text(
                  'Get Max Miss Combo from specified NoteSkin (see table below)')),
            ]),
            DataRow(cells: [
              DataCell(Text('GetFailedAux()')),
              DataCell(Text('If user got LifeBar 0 or Stagebreak')),
            ]),
          ]),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "\nGetTapNoteScores() needs an specific tapnote value, this is the list available:\n",
                    ),
                  ],
                ),
              ),
            ),
          ),
          DataTable(
            columns: [
              DataColumn(
                  label: Text(
                'TapNoteScore_Value',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              )),
              DataColumn(
                  label: Text(
                'Description',
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('TapNoteScore_W1')),
                DataCell(Text('Perfect Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_W2')),
                DataCell(Text('Perfect Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_CheckpointHit')),
                DataCell(Text('Perfect Hold')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_W3')),
                DataCell(Text('Great Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_W4')),
                DataCell(Text('Good Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_W5')),
                DataCell(Text('Bad Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_Miss')),
                DataCell(Text('Miss Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_CheckpointMiss')),
                DataCell(Text('Miss Holds')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_Heart')),
                DataCell(Text('Heart Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_Potion')),
                DataCell(Text('Potion Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_HitMine')),
                DataCell(Text('Mine Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_Velocity')),
                DataCell(Text('Velocity Item Taps')),
              ]),
              DataRow(cells: [
                DataCell(Text('TapNoteScore_Item')),
                DataCell(Text('Total Item Taps')),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "\nMaxComboSkin(), MaxMissComboSkin(), GetTapNoteSkin(,) needs an specific NoteSkin Value, this is the list available:\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "aadmb ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Blue Drum NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "aadmr ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Red Drum NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "aadmy ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Yellow Drum NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "basic ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Basic NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "canon ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Canon NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "default ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Prime NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "dog ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Dog NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "drum ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Drum NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "easy ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Easy NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "fiesta ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Fiesta NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "fiesta2 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Fiesta 2 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "fire ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Fire NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "flower ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Flower NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "girl ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Girl NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "horse ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Horse NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "ice ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Ice NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "infinity ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Infinity NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "lightning ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Lightning NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "missile ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Missile NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "music ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Music NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "nx ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": NX NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "nx2 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": NX 2 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "nxa ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": NX Absolute NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "old ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Old NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "perfor1 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Perfomance 1 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "perfor2 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Perfomance 2 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "perfor3 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Perfomance 3 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "poker ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Poker NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "prime2 ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Prime 2 NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "rebirth ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Rebirth NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "sheep ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Sheep NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "slime ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Slime NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "soccer ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Soccer Ball NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "wind ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": Wind NoteSkin\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "xx  ",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ": XX Aniversary NoteSkin\n\n",
                    ),
                    const TextSpan(
                      text: "\nGetGrade() will return these values",
                    ),
                  ],
                ),
              ),
            ),
          ),
          DataTable(columns: [
            DataColumn(
                label: Text(
              'Grade_Return',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Grade_Description',
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('Grade_Tier1')),
              DataCell(Text('SSS Gold Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier2')),
              DataCell(Text('SS Gold Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier3')),
              DataCell(Text('S Gold Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier4')),
              DataCell(Text('A Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier5')),
              DataCell(Text('B Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier6')),
              DataCell(Text('C Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier7')),
              DataCell(Text('D Grade')),
            ]),
            DataRow(cells: [
              DataCell(Text('Grade_Tier8')),
              DataCell(Text('F Grade')),
            ]),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                  children: [
                    const TextSpan(
                      text: "\nThis is an example of Quest_Goal.lua.\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "STEP1",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " requires that PERFECT + GOOD + MISS less or equal than 100, 10 Hearts, LifeBar at 15%, MaxComboSkin of NXA Tap more than 30 and No StageBreak.\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "STEP2",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " requires 10 Bad Old Noteskin tapnotes, 250 Perfects from Basic NoteSkin but it can allow BreakOff.\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "STEP3",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          " requires more than 35 Mines pressed, Grade S or Better, Score more or equal than 20000.\n\n",
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.noise_control_off,
                        color: Colors.purple,
                        size: 20,
                      ),
                    ),
                    TextSpan(
                      text: "STEP4",
                      style: GoogleFonts.roboto(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: " Only need to survive until the end.\n\n",
                    ),
                    TextSpan(
                      text: "\nExample: Quest_Goal.lua",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const GalleryImage(
            'questgoal3',
            AssetImage('images/questgoal3.PNG'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        const WidgetSpan(
                          child: Icon(
                            Icons.volume_down_alt,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        TextSpan(
                          text: 'Important about Quest_Goal.lua\n',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text:
                                "For GetTapNoteSkin(), 'default' will be always the TapNote that you didn't set as noteskin on StepEditor. If you set 'prime2' as mod, then every default noteskin will be set with the prime2 noteskin.",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
