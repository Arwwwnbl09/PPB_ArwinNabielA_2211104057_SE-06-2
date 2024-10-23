import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible vs Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const Text(
            "Flexible",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  padding:
                      EdgeInsets.all(8), // Added padding for better spacing
                  color: Colors.green,
                  child: Text(
                    "Flexible takes up the remaining space but can shrink if needed.",
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis, // Prevent overflow
                    maxLines: 2,
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          const SizedBox(height: 20),
          // Expanded Example
          const Text(
            "Expanded",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding:
                      EdgeInsets.all(8), // Added padding for better spacing
                  color: Colors.green,
                  child: Text(
                    "Expanded forces the widget to take up all the remaining space.",
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis, // Prevent overflow
                    maxLines: 2,
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ],
      ),
    );
  }
}
