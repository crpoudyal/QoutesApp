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
    "If life were predictable it would cease to be life, and be without flavor.",
    "You only live once, but if you do it right, once is enough.",
    "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
    "Never let the fear of striking out keep you from playing the game.",
    "The whole secret of a successful life is to find out what is one’s destiny to do, and then do it.",
    "Curiosity about life in all of its aspects, I think, is still the secret of great creative people.",
    "Life is not a problem to be solved, but a reality to be experienced.",
    "The big lesson in life, baby, is never be scared of anyone or anything.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/dblquote.png",
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              quote[index % quote.length],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: showQuotes,
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }

  void showQuotes() {
    setState(() {
      index++;
    });
  }
}
