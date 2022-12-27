import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key, required this.logText}) : super(key: key);
  final String logText;

  @override
  Widget build(BuildContext context) {
    const String imagePath = "assets/lottie/loading_bar.json";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.06, child: Lottie.asset(imagePath)),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Text(logText,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
