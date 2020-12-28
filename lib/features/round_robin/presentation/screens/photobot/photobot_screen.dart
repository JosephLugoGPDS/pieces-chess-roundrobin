
import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/case/case_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/home/home_photobot_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/photos/dashboard_result_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/profile/profile.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/roundrobin/round_robin_photo_screen.dart';

class PhotoBotScreen extends StatefulWidget {
  @override
  _PhotoBotScreenState createState() => _PhotoBotScreenState();
}

class _PhotoBotScreenState extends State<PhotoBotScreen> {
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
              HomePhotoBotScreen(),
              PracticalCase(),
              PhotoScreenRoundRobin(),
              DashboardResults(),
              ProfileScreen()
            ],
          )),
          _PhotoBotNavigatioBar(
            index: currentIndex,
            onIndexSelected: (index) {
              setState(() => currentIndex = index);
            },
          ),
        ],
      ),
    );
  }
}

class _PhotoBotNavigatioBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;

  const _PhotoBotNavigatioBar({this.index, this.onIndexSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: theme.canvasColor,
                border: Border.all(color: theme.bottomAppBarColor, width: 2),
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Icon(Icons.home,
                            color: index == 0
                                ? PhotoBotColors.green
                                : PhotoBotColors.lightGrey),
                        onPressed: () => onIndexSelected(0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.message,
                            color: index == 1
                                ? PhotoBotColors.green
                                : PhotoBotColors.lightGrey),
                        onPressed: () => onIndexSelected(1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: PhotoBotColors.purple,
                        child: IconButton(
                          icon: Icon(Icons.bar_chart_outlined,
                              color: index == 2
                                  ? PhotoBotColors.green
                                  : PhotoBotColors.lightGrey),
                          onPressed: () => onIndexSelected(2),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.dashboard,
                            color: index == 3
                                ? PhotoBotColors.green
                                : PhotoBotColors.lightGrey),
                        onPressed: () => onIndexSelected(3),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          onTap: () => onIndexSelected(4),
                          child: Icon(Icons.group,
                              color: index == 4
                                  ? PhotoBotColors.green
                                  : PhotoBotColors.lightGrey)),
                    ),
                  )
                ],
              ),
            )));
  }
}
