import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/round_robin/data/in_memory_photobot.dart';
import 'package:round_robin_team4/features/round_robin/domain/model/photo.dart';

class HomePhotoBotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo Bot",
          style: theme.textTheme.headline6,
        ),
        leading: Icon(
          Icons.home,
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          final photo = photos[index];
          return _ItemPhotos(photo: photo);
        },
      ),
    );
  }
}

class _ItemPhotos extends StatelessWidget {
  final Photo photo;

  const _ItemPhotos({this.photo});

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
                child: Image.asset(
                  photo.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    photo.name,
                    style: theme.textTheme.caption.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    photo.description,
                    maxLines: 1,
                    style: theme.textTheme.overline.copyWith(
                      color: theme.secondaryHeaderColor,
                    ),
                  ),
                  Text(
                    photo.order,
                    style: theme.textTheme.caption,
                  ),
                  photo.timearrival == -1
                      ? const SizedBox(height: 10)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Llegada: ",
                              style: theme.textTheme.caption,
                            ),
                            Text(
                              "${photo.timearrival.toStringAsFixed(0)}",
                              style: theme.textTheme.caption.copyWith(
                                color: theme.secondaryHeaderColor,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                  photo.burst == 0
                      ? const SizedBox(height: 10)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Ráfaga: ",
                              style: theme.textTheme.caption,
                            ),
                            Text(
                              "${photo.burst.toStringAsFixed(0)}",
                              style: theme.textTheme.caption.copyWith(
                                color: theme.secondaryHeaderColor,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
