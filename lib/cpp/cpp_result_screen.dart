import 'package:flutter/material.dart';

class CppResultScreen extends StatelessWidget {
  const CppResultScreen({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          children: [
            const SizedBox(width: 1000),
            const Text(
              'Your Score: ',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40,),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    strokeWidth: 7,
                    value: score / 10,
                    color: Colors.green,
                    backgroundColor: Colors.red,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      score.toString(),
                      style: const TextStyle(fontSize: 80),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Out of 10",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white.withOpacity(0.7)
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
