import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';
import 'package:round_robin_team4/features/round_robin/data/in_memory_result.dart';
import 'package:round_robin_team4/features/round_robin/domain/model/photo.dart';

class PhotoScreenRoundRobin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Diagrama de Gantt",
            style: theme.textTheme.headline6,
          ),
          leading: Icon(
            Icons.bar_chart,
          ),
        ),
        body: _PhotoBotsRoundRobin(size: size, theme: theme));
  }
}

//!Round Robin

class _PhotoBotsRoundRobin extends StatelessWidget {
  const _PhotoBotsRoundRobin({
    @required this.size,
    this.theme,
  });

  final Size size;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: photos.length,
              scrollDirection: Axis.horizontal,
              itemExtent: size.width * 0.6,
              itemBuilder: (context, index) {
                final photo = photos[index];
                return _PhotoBot(
                  photo: photo,
                );
              },
            )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: theme.canvasColor,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Iteraciones totales:",
                              style: theme.textTheme.subtitle2,
                            ),
                            Text(
                              "9",
                              style: theme.textTheme.subtitle2.copyWith(
                                color: theme.secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pila:",
                              style: theme.textTheme.subtitle2,
                            ),
                            Text(
                              "P1  P2  P3  P4  P5  P1  P2  P3  P2",
                              style: theme.textTheme.subtitle2.copyWith(
                                color: theme.secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ráfagas:",
                              style: theme.textTheme.subtitle2,
                            ),
                            Text(
                              "5    5    5    4     5     2    5     1     1",
                              style: theme.textTheme.subtitle2.copyWith(
                                color: theme.secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Restantes:",
                              style: theme.textTheme.subtitle2,
                            ),
                            Text(
                              "2     6     1     0    0    0    1    0    0",
                              style: theme.textTheme.subtitle2.copyWith(
                                color: theme.secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // const Expanded(child: SizedBox()),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Tiempo total:",
                                style: theme.textTheme.subtitle2,
                              ),
                              Text(
                                "33 segundos",
                                style: theme.textTheme.subtitle2.copyWith(
                                  color: theme.secondaryHeaderColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PhotoBot extends StatelessWidget {
  final Photo photo;

  const _PhotoBot({this.photo});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                        child: Image.asset(photo.image, fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: PhotoBotColors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 4,
                                ),
                                child: Text(
                                  "${photo.timearrival.toStringAsFixed(0)}",
                                  style: TextStyle(
                                    color: PhotoBotColors.purple,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: PhotoBotColors.purple,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 4,
                                ),
                                child: Text(
                                  "${photo.returntimes.toStringAsFixed(0)}",
                                  style: TextStyle(
                                    color: PhotoBotColors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // const Expanded(child: SizedBox()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Ráfaga:",
                              style: theme.textTheme.subtitle2,
                            ),
                            Text(
                              "${photo.burst.toStringAsFixed(0)}",
                              style: theme.textTheme.subtitle2.copyWith(
                                color: theme.secondaryHeaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // const Expanded(child: SizedBox()),
                        photo.waittimes == 0
                            ? Center(
                                child: Text(
                                  "Proceso Terminado",
                                  style: theme.textTheme.subtitle2,
                                ),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Ráfaga faltante:",
                                    style: theme.textTheme.subtitle2,
                                  ),
                                  Text(
                                    "${photo.waittimes.toStringAsFixed(0)}",
                                    style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.secondaryHeaderColor,
                                      fontWeight: FontWeight.bold,
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
          ),
          Positioned(
            right: 0,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: PhotoBotColors.pink,
                child: Text(
                  photo.order,
                  style: TextStyle(
                    color: PhotoBotColors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
