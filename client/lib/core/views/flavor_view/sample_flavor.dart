import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

class FlavorView extends StatelessWidget {
  const FlavorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Flavor.I.getString(Keys.appTitle).toString()),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Flavor.I.getString(Keys.appTitle).toString()),
          Text(Flavor.I.getString(Keys.apiKey).toString()),
          Text(Flavor.I.getString(Keys.apiUrl).toString()),
        ],
      )),
    );
  }
}
