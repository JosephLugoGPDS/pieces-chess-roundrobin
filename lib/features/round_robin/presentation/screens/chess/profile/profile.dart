import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Group 4"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ChessColors.green),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Expanded(
                                    child: CircleAvatar(
                                      backgroundColor: theme.canvasColor,
                                      radius: size.height * 0.1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Image.asset(
                                          "assets/images/logo_untels.png",
                                          
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Positioned(
                              left: 20,
                              bottom: 0,
                              child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ChessColors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Expanded(
                                      child: CircleAvatar(
                                        backgroundColor: ChessColors.purple,
                                        radius: size.height * 0.02,
                                        child: Icon(Icons.favorite_border_outlined,
                                            color: ChessColors.white),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Text("Group 4 Round Robin",
                          style: theme.textTheme.headline6.copyWith(
                              color: theme.secondaryHeaderColor,
                              backgroundColor: Colors.transparent,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: theme.canvasColor,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Text("Lenguage and framework used:",
                                      style: theme.textTheme.subtitle1.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: theme.secondaryHeaderColor)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Text(
                                  "Dart",
                                  style: theme.textTheme.subtitle2.copyWith(
                                    color: ChessColors.green,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Text(
                                  "Flutter",
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: theme.secondaryHeaderColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Dark Mode",
                                        style: theme.textTheme.subtitle2.copyWith(
                                          fontWeight: FontWeight.bold
                                        )
                                        ),
                                    Switch(
                                      value: true,
                                      onChanged: (val){},
                                      activeColor: theme.secondaryHeaderColor,
                                    )
                                  ],
                                ),
                              ),
                            ])))),
            Expanded(
              flex: 1,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: ChessColors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "Finish",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ))),
                ),
              ),
            ),
          ],
        ));
  }
}
