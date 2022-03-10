import 'package:flutter/material.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Custom Theme",
              style: Theme.of(context).textTheme.headline6)),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                Text("HELLOOOWW", style: Theme.of(context).textTheme.headline6),
          ),
        ],
      )),
    );
  }
}
