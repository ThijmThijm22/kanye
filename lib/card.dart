import 'package:flutter/material.dart';
import 'dart:math';


class QCard extends StatelessWidget {

  late String quote;
  QCard(this.quote);

  // random
  int genRandom() {
    var rng = new Random();
    int number =  rng.nextInt(4);
    print(number);
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
        color: Colors.grey[50],
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                quote,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Text(
                '-Kanye East',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Image.asset('assets/kanye${genRandom()}.jpg'),
            ],
          ),
        )
      ),
    );
  }
}