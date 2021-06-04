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
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                quote[index % quote.length],
                style: TextStyle(
                  fontSize: 20,
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
      ),
    );
  }

  void showQuotes() {
    setState(() {
      index++;
    });
  }
}
