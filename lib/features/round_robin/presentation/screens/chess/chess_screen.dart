import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

import 'pieces/pieces_of_chess_screen.dart';
import 'profile/profile.dart';
import 'roundrobin/round_robin_chess_screen.dart';

class ChessScreen extends StatefulWidget {

  @override
  _ChessScreenState createState() => _ChessScreenState();
}

class _ChessScreenState extends State<ChessScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                PiecesScreen(),
                Center(child: Text("History of the round robin algorithm: Page${(currentIndex+1).toString()}")),
                ChessRoundRobinScreen(onTap: ()=>setState(()=>currentIndex=0),),
                Center(child: Text("Practice case explanation: Page${(currentIndex+1).toString()}")),
                ProfileScreen()
              ],
            )
          ),
          _ChessNavigatioBar(
            index: currentIndex,
            onIndexSelected: (index){
              setState( ()=> currentIndex = index);
            }
            )
        ]
      )
    );
  }
}

class _ChessNavigatioBar extends StatelessWidget {

  final int index;
  final ValueChanged<int> onIndexSelected;

  const _ChessNavigatioBar({this.index, this.onIndexSelected});


  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.canvasColor,
          border: Border.all(
            color: theme.bottomAppBarColor,
            width: 2
          ),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: index==0?ChessColors.green:ChessColors.lightGrey
                  ),
                  onPressed: () => onIndexSelected(0),
                ),
              ),
              Material(
                child: IconButton(
                  icon: Icon(
                    Icons.store,
                    color: index==1?ChessColors.green:ChessColors.lightGrey
                  ),
                  onPressed: () => onIndexSelected(1),
                ),
              ),
              Material(
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: ChessColors.purple,
                  child: IconButton(
                    icon: Icon(
                    Icons.change_history_sharp,
                    color: index==2?ChessColors.green:ChessColors.lightGrey
                  ),
                    onPressed: () => onIndexSelected(2),
                  ),
                ),
              ),
              Material(
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: index==3?ChessColors.green:ChessColors.lightGrey
                  ),
                  onPressed: () => onIndexSelected(3),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: () => onIndexSelected(4),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}