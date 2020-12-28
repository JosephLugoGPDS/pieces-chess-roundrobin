import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

import 'package:round_robin_team4/features/round_robin/domain/model/photo.dart';

class DashboardResults extends StatefulWidget {
  @override
  _DashboardResultsState createState() => _DashboardResultsState();
}

class _DashboardResultsState extends State<DashboardResults> {
  List<Photo> photobots;

  @override
  void initState() {
    photobots = Photo.getPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tablas de Promedios",
          style: theme.textTheme.headline6,
        ),
        leading: Icon(
          Icons.dashboard,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              DashBoardWaitTimes(theme: theme, photobots: photobots),
              Divider(
                color: PhotoBotColors.white,
                height: 4,
              ),
              DashBoardReturnTimes(theme: theme, photobots: photobots),
          ],
        ),
      ),
    );
  }
}

class DashBoardReturnTimes extends StatelessWidget {
  const DashBoardReturnTimes({
    Key key,
    @required this.theme,
    @required this.photobots,
  }) : super(key: key);

  final ThemeData theme;
  final List<Photo> photobots;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                "Procesos",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
            DataColumn(
              label: Text(
                "( T.R. - T.LL. )",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
            DataColumn(
              label: Text(
                "T.R.P",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
          ],
          rows: photobots
              .map(
                (photo) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        photo.order,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: photo.order == "TOTAL"
                              ? PhotoBotColors.green
                              : PhotoBotColors.white,
                          fontWeight: photo.order == "TOTAL"
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        photo.trp,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        photo.trpresult,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: photo.trpresult == "24.8"
                              ? PhotoBotColors.green
                              : PhotoBotColors.white,
                          fontWeight: photo.trpresult == "24.8"
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class DashBoardWaitTimes extends StatelessWidget {
  const DashBoardWaitTimes({
    Key key,
    @required this.theme,
    @required this.photobots,
  }) : super(key: key);

  final ThemeData theme;
  final List<Photo> photobots;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                "Procesos",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
            DataColumn(
              label: Text(
                "Sumatoria(TE-TLL)",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
            DataColumn(
              label: Text(
                "T.E.P.",
                style: theme.textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
            ),
          ],
          rows: photobots
              .map(
                (photo) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        photo.order,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: photo.order == "TOTAL"
                              ? PhotoBotColors.green
                              : PhotoBotColors.white,
                          fontWeight: photo.order == "TOTAL"
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        photo.tep,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        photo.tepresult,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: photo.tepresult == "18.4"
                              ? PhotoBotColors.green
                              : PhotoBotColors.white,
                          fontWeight: photo.tepresult == "18.4"
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
