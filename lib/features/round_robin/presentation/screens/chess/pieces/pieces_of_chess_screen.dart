import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';
import 'package:round_robin_team4/features/round_robin/data/in_memory_pieces.dart';
import 'package:round_robin_team4/features/round_robin/domain/model/chess_pieces.dart';

class PiecesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pieces"),
          centerTitle: true,
          ),
        body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2/3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
                ),
          itemCount: pieces.length,
          itemBuilder: (context, index) {
            final piece = pieces[index];
            return _ItemPieces(piece: piece);
          },
        ));
  }
}

class _ItemPieces extends StatelessWidget {
  final Piece piece;

  const _ItemPieces({this.piece});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
        elevation: 8,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipOval(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: ChessColors.purple,
                        child: Image.asset(
                          piece.image,
                          fit: BoxFit.cover
                          )
                        ),
                    ),
                  ),
                ),
                Expanded(
                    child: Column(
                      children: [
                        Text(
                          piece.name,
                          style: theme.textTheme.subtitle2.copyWith(
                            fontWeight: FontWeight.bold
                          )
                          ),
                        const SizedBox(height: 10),
                        Text(
                          piece.description, 
                          style: theme.textTheme.overline.copyWith(
                            color: theme.secondaryHeaderColor
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                        const SizedBox(height: 10),
                        Text(
                          "${piece.burst.toStringAsFixed(0)}",
                          style: theme.textTheme.subtitle2.copyWith(
                            color: theme.secondaryHeaderColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                    )
                  ),
              ],
            )));
  }
}
