import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  int index = 0;
  List quote = [
    "I should no longer define myself as the son of a father who couldn’t or hasn’t or wouldn’t or wasn’t.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success",
    "If life were predictable it would cease to be life, and be without flavor."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quote[index % quote.length],
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: ShowQuotes,
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }

  void ShowQuotes() {
    setState(() {
      index++;
    });
  }
}
