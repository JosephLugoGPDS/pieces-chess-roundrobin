import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';
import 'package:round_robin_team4/features/round_robin/data/in_memory_pieces.dart';
import 'package:round_robin_team4/features/round_robin/domain/model/chess_pieces.dart';
import 'package:round_robin_team4/features/round_robin/presentation/widgets/chess_button_gradient.dart';

class ChessRoundRobinScreen extends StatelessWidget {
  final VoidCallback onTap;

  const ChessRoundRobinScreen({@required this.onTap});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Round Robin Result"),
          centerTitle: true,
        ),
        body: _PiecesChestRoundRobin(size: size, theme: theme)
        );
  }
}

//!Round Robin

class _PiecesChestRoundRobin extends StatelessWidget {
  const _PiecesChestRoundRobin({
    @required this.size,
    this.theme,
    this.onTap,
  });

  final Size size;
  final ThemeData theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: pieces.length,
              scrollDirection: Axis.horizontal,
              itemExtent: size.width * 0.6,
              itemBuilder: (context, index) {
                final piece = pieces[index];
                return _PiecesChess(
                  piece: piece,
                );
              },
            )),
        Expanded(
          flex: 2, 
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: theme.canvasColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Order:",style: TextStyle(color:theme.secondaryHeaderColor)),
                        const SizedBox(height: 10),
                        Text("Burst Total:",style: TextStyle(color:theme.secondaryHeaderColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Time Total:",style: TextStyle(color:theme.secondaryHeaderColor)),
                  ),
                  Spacer(),
                  ChessButtonGradient(
                    textButton: "Process Finish",
                    onTap: (){},
                  )
                ]
              )
            )
          )
          )
      ],
    );
  }
}

class _PiecesChess extends StatelessWidget {
  final Piece piece;

  const _PiecesChess({this.piece});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    int count = 0;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Card(
              elevation: 8,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipOval(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                                backgroundColor: ChessColors.purple,
                                child:
                                    Image.asset(piece.image, fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Column(children: [
                        Text(piece.name,
                            style: theme.textTheme.subtitle2
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Text(
                          piece.description,
                          style: theme.textTheme.overline
                              .copyWith(color: ChessColors.lightGrey),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ChessColors.white,
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.remove,
                                color: ChessColors.purple,
                                ),
                              onTap: (){},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "$count"
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ChessColors.purple,
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.add,
                                color: ChessColors.white
                                ),
                              onTap: (){},
                            ),
                          ),
                          // const SizedBox(width: 5),
                          Spacer(),
                          Text(
                            "${piece.burst.toStringAsFixed(0)}",
                            style: theme.textTheme.subtitle2.copyWith(
                                color: ChessColors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ])
                      ])),
                    ],
                  ))),
      Positioned(
        right: 0,
        child: InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundColor: ChessColors.pink,
            child: Icon(Icons.format_list_numbered, color: ChessColors.white,),
          ),
        ),
      )
        ],
      ),
    );
  }
}
